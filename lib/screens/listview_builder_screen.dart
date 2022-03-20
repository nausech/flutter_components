import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class ListViewBuilderScreen extends StatefulWidget {
   
  const ListViewBuilderScreen({Key? key}) : super(key: key);

  @override
  State<ListViewBuilderScreen> createState() => _ListViewBuilderScreenState();
}

class _ListViewBuilderScreenState extends State<ListViewBuilderScreen> {

  final List<int>imageIds = [1,2,3,4,5,6,7,8,9,10];
  final ScrollController scrollController = ScrollController();
  bool isloading = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    scrollController.addListener(() {
      if((scrollController.position.pixels + 500) >= scrollController.position.maxScrollExtent ){
        fetchData();
      }
    });
  }

  Future fetchData() async {

    if( isloading ) return;

    isloading = true;
    setState(() { });

    await Future.delayed(const Duration(seconds:3));
    add5();
    isloading = false;
    setState(() { });

    if((scrollController.position.pixels +100) <= scrollController.position.maxScrollExtent) return;
    scrollController.animateTo(
      scrollController.position.pixels + 300 , 
      duration: const Duration( microseconds: 300),
      curve: Curves.fastOutSlowIn
    );

  }
  
  void add5(){
    final lastid = imageIds.last;
    imageIds.addAll(
      [1,2,3,4,5].map((e) =>lastid + e)
    );

    setState(() {});
  }

  Future <void> onRefresh() async {
    await Future.delayed(const Duration(seconds: 2));
    final lastId =imageIds.last;
    imageIds.clear();
    imageIds.add(lastId+1);
    add5();
  }

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return  Scaffold(
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: Stack(
          children: [
            RefreshIndicator(
              color: AppTheme.primary,
              onRefresh: onRefresh,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                controller: scrollController,
                itemCount: imageIds.length,
                itemBuilder: (BuildContext context, int index) {
                  return FadeInImage(
                    width: double.infinity,
                    height:300,
                    fit: BoxFit.cover,
                    placeholder: const AssetImage('assets/images/jar-loading.gif'), 
                    image: NetworkImage('https://picsum.photos/500/300?image=${imageIds[index]}')
                  );
                },
              ),
            ),
            if ( isloading )
              Positioned(
                bottom: 40,
                left: size.width*0.5 -30,
                child: _LoadingIcon()
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
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.7),
        shape: BoxShape.circle
      ),      
      height: 60,
      width: 60,
      child: const CircularProgressIndicator(color:AppTheme.primary),
    );
  }
}