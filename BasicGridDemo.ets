



@Entry
@Component
struct BasicGridDemo {
  private scroller: Scroller = new Scroller()
  private nums: number[] = Array(30).fill(0).map((_: undefined, i: number): number => i + 1)

  build() {
    Column() {
      Grid(this.scroller) {
        ForEach(this.nums, (item: number) => {
          GridItem() {
            Text(`${item}`)
              .fontSize(30)
              .fontColor(Color.White)
              .backgroundColor('#0094ff')
              .textAlign(TextAlign.Center)
          }
        }, (item: number) => item.toString())
      }
      .columnsTemplate('1fr 1fr')
      .scrollBar(BarState.Auto)
      .width('100%')
      .height('100%')
      .height(200)
      .padding(10)
      .rowsGap(10)

      Row({ space: 20 }) {
        Button('上一页')
          .onClick(() => {
            this.scroller.scrollPage({ next: false })
          })
        Button('下一页')
          .onClick(() => {
            this.scroller.scrollPage({ next: true })
          })
      }
      }


  }


}
