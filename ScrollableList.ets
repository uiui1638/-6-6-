import promptAction from '@ohos.promptAction';

@Entry
@Component
struct ScrollableList {
  // 生成 1-30 的数字数组
  private items: number[] = Array(30).fill(0).map(
    (_: undefined, i: number): number => i + 1
  );

  // 处理点击事件
  private handleClick(item: number): void {
    promptAction.showToast({
      message: `点击了: ${item}`,
      duration: 1500
    });
  }

  build() {
    Column() {
      // 列表标题
      Text('30个项目滚动列表')
        .fontSize(24)
        .fontWeight(FontWeight.Bold)
        .margin({ top: 16, bottom: 16 })

      // 滚动列表容器
      List({ space: 12, initialIndex: 0 }) {
        ForEach(
          this.items,
          (item: number) => {
            ListItem() {
              // 列表项内容
              Row() {
                Text(`项目 ${item}`)
                  .fontSize(18)
                  .fontColor('#333')
                  .layoutWeight(1) // 占据剩余空间

                Image($r('app.media.startIcon'))
                  .width(24)
                  .height(24)
                  .margin({ left: 8 })
              }
              .padding(16)
              .backgroundColor('#FFFFFF')
              .borderRadius(8)
              .shadow({ radius: 4, color: '#1A000000', offsetX: 1, offsetY: 1 })
              .width('100%')
              .onClick(() => this.handleClick(item))
            }
          },
          (item: number): string => item.toString()
        )
      }
      .width('100%')
      .height('85%') // 占据屏幕大部分高度
      .divider({
        strokeWidth: 1,
        color: '#F0F0F0',
        startMargin: 16,
        endMargin: 16
      })
    }
    .width('100%')
    .height('100%')
    .padding(16)
    .backgroundColor('#F5F5F5')
  }
}