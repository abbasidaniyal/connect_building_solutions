import 'package:flutter_web/material.dart';

import '../widgets/navigation_bar_widget.dart';
import '../widgets/navigation_drawer_widget.dart';
import '../widgets/footer.dart';
import '../widgets/page_top_widget.dart';

class AboutPage extends StatelessWidget {
  ScrollController controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:
          MediaQuery.of(context).size.width < 650 ? NavigationDrawer() : null,
      appBar: MediaQuery.of(context).size.width >= 650
          ? NavigationBar(
              context: context,
            )
          : AppBar(
              title: Center(
                child: Image(
                  image: AssetImage("logo/logo_transparent.png"),
                  fit: BoxFit.cover,
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
              ),
              backgroundColor: Colors.white,
              iconTheme: IconThemeData(color: Colors.black),
              textTheme: TextTheme(
                body1: TextStyle(
                  color: Colors.black,
                ),
                title: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
      body: SingleChildScrollView(
        controller: controller,
        child: Column(
          children: <Widget>[
            PageTop(title: "About Us"),
            Container(
              padding: EdgeInsets.all(20.0),
              child: Text(
                  """Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus semper ultricies leo nec accumsan. Donec dictum orci a velit egestas, ac euismod augue fermentum. Fusce dignissim efficitur tristique. Nam tincidunt, est non suscipit interdum, eros arcu condimentum dui, sit amet sodales sem nibh a mauris. In ut felis ante. Sed vitae faucibus urna. Etiam a nunc a eros maximus vulputate non in tortor.

Donec nec dignissim leo. Curabitur ultrices ullamcorper viverra. Nullam velit metus, luctus sed pellentesque eget, mattis eget augue. Curabitur quis diam volutpat, dapibus lorem eget, congue dui. Aenean lacinia, est eu rhoncus lacinia, sapien diam pulvinar nisl, ultrices aliquam quam neque quis metus. Etiam ornare elit et faucibus efficitur. Duis congue risus vel orci porta, vitae posuere tellus tristique.

Curabitur placerat risus vitae tortor finibus eleifend. Suspendisse pretium leo sit amet libero pretium tincidunt. Vestibulum vestibulum, nisl ut vulputate condimentum, libero erat maximus lacus, ut vulputate dolor ipsum et ipsum. Pellentesque tincidunt euismod felis in ultrices. Morbi et dui non odio varius porttitor nec ut felis. Etiam fringilla justo nulla, eu semper neque egestas sed. Vivamus tempus vitae elit et interdum. Pellentesque suscipit nulla augue, in gravida risus posuere ac. Maecenas quis libero rhoncus elit egestas euismod. Donec elementum blandit erat, ac varius felis laoreet id. Maecenas neque leo, malesuada vel volutpat et, ultricies vel est. Donec quis euismod eros, vitae blandit augue. Pellentesque id lorem sagittis, fermentum elit consequat, viverra dui. Quisque vitae sagittis nunc. Sed magna nunc, pulvinar quis ante in, pulvinar ultricies neque.

In sed neque nec arcu tincidunt pretium. Praesent vulputate ipsum ut nunc semper, ut pharetra lorem pellentesque. Sed eget nisl quam. Donec non mollis risus, eget maximus ante. Nam tempor mollis tristique. Phasellus rutrum tortor eu ultricies fringilla. Sed condimentum cursus velit et auctor.

Duis commodo massa eu diam pellentesque convallis. Nunc gravida dui tristique diam accumsan consectetur. Suspendisse luctus, nunc eget mattis ultrices, odio velit mattis tellus, a molestie eros enim non risus. Cras et accumsan tortor, id malesuada leo. Nunc ac consequat purus. Donec risus mi, pretium faucibus leo ac, posuere pretium libero. Integer vitae imperdiet nisl, luctus molestie ante. Aliquam erat volutpat."""),
            ),
            Footer(),
          ],
        ),
      ),
      floatingActionButton: IconButton(
        icon: Icon(
          Icons.arrow_upward,
          color: Colors.grey,
        ),
        onPressed: () {
          controller.jumpTo(0.0);
        },
      ),
    );
  }
}
