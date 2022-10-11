import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class ListviewBuilderScreen extends StatefulWidget {
   
  const ListviewBuilderScreen({Key? key}) : super(key: key);

  @override
  State<ListviewBuilderScreen> createState() => _ListviewBuilderScreenState();
}

class _ListviewBuilderScreenState extends State<ListviewBuilderScreen> {

  final ScrollController scrollController = ScrollController(); 
   
  final List<int> imagesIds = [1,2,3,4,5,6,7,8,9];

  bool isLoading = false; 

  @override
  void initState() {
    // TODO: implement initState

    super.initState();

    scrollController.addListener(() {
      if( (scrollController.position.pixels + 40) >= scrollController.position.maxScrollExtent){ 
        fetchData();
      }
     });
  }
     Future fetchData() async{
      if (isLoading) return;

      isLoading = true;
      setState(() {});

      await Future.delayed(const Duration(seconds: 3));
      add5Ids();

      isLoading = false;
      setState(() {});

      if ( scrollController.position.pixels + 80 <= scrollController.position.maxScrollExtent) return;

      scrollController.animateTo(
        scrollController.position.pixels + 100, //Offset es a cuanto del scroll queremos que se active este efecto
        duration: const Duration( milliseconds:  300), 
        curve: Curves.ease
        );

     }


  void add5Ids(){
    final lastId = imagesIds.last;
    imagesIds.addAll(
      

      [1,2,3,4,5].map( (e)=> lastId + e),
      

    );
    setState(() {});
  } 


  Future<void> onRefresh() async {
    await Future.delayed(const Duration(seconds: 3));
    final lastIds = imagesIds.last;
    imagesIds.clear();
    imagesIds.add(lastIds + 1);
    add5Ids();

  }

  @override
  Widget build(BuildContext context) {

    //Media query que se ajusta a cualquier pantalla
    final size = MediaQuery.of(context).size; 

    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Infinty Scroll'),
      // ),
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: Stack(
          children: [
            RefreshIndicator(
              onRefresh: onRefresh,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                controller: scrollController,
                itemCount: imagesIds.length, // es decir, la cantidad total de items
                itemBuilder: (BuildContext context, int index) {
                  return FadeInImage(
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: 300,
                    placeholder: const AssetImage('assets/jar-loading.gif'), 
                    image: NetworkImage('https://picsum.photos/500/300?image=${imagesIds[index]}')
                    ) ;
                },
              ),
            ),

            if( isLoading )
              Positioned(
               left: size.width * 0.5 - 30,
               bottom: 40,
               child: const _LoadingIcon()
              ) 
          ],
        ),
      ),
    );
  }
}

class _LoadingIcon extends StatelessWidget {
  const _LoadingIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: 60,
      height: 60,
      decoration: BoxDecoration(
      color: Colors.white.withOpacity(0.75),
      borderRadius: BorderRadius.circular(100)

      ),
      child: const CircularProgressIndicator(
        color: AppTheme.primary,
      ),
    );
  }
} 