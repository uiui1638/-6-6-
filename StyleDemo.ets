@Styles
function cardstyles()
{
  .width(150)
  .height(100)
  .backgroundColor(Color.Pink)
}
@Entry
@Component
struct StyleDemo {
  build() {
    Column() {
      Text("Hello World").cardstyles()
        .fontSize(30)
    }
  }
}
