// 正确写法
@Extend(Text) function fancy (fontSize: number,  scolor: Color,s1color: Color) {
  .fontSize(fontSize)
  .backgroundColor(scolor)
  .fontColor(s1color)

}


@Entry
@Component
struct FancyUse {


  build() {
    Row({ space: 10 }) {
      Text('重用样式')
        .fancy(40,Color.Blue,Color.Red)
    }
  }
}