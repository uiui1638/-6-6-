/*
 * 使用的步骤
 * 1 估算出 几行几列   3行 4列
 * 2 找到哪个格子要进行合并
 *  1 行合并
 *  2 列合并
 * */


@Entry
@Component
struct Index {
  build() {
    Grid() {
      GridItem() {
        Text("1")
      }
      .backgroundColor(`rgb(${Math.floor(Math.random() * 256)},${Math.floor(Math.random() * 256)},${Math.floor(Math.random() * 256)})`)

      // .rowStart(1)
      // .rowEnd(2)

      GridItem() {
        Text("2")
      }
      .backgroundColor(`rgb(${Math.floor(Math.random() * 256)},${Math.floor(Math.random() * 256)},${Math.floor(Math.random() * 256)})`)

      GridItem() {
        Text("3")
      }
      .backgroundColor(`rgb(${Math.floor(Math.random() * 256)},${Math.floor(Math.random() * 256)},${Math.floor(Math.random() * 256)})`)

      .columnStart(1)
      .columnEnd(2)


      GridItem() {
        Text("4")
      }
      .backgroundColor(`rgb(${Math.floor(Math.random() * 256)},${Math.floor(Math.random() * 256)},${Math.floor(Math.random() * 256)})`)

      .rowStart(2)
      .rowEnd(3)

      GridItem() {
        Text("5")
      }
      .backgroundColor(`rgb(${Math.floor(Math.random() * 256)},${Math.floor(Math.random() * 256)},${Math.floor(Math.random() * 256)})`)

      GridItem() {
        Text("6")
      }
      .backgroundColor(`rgb(${Math.floor(Math.random() * 256)},${Math.floor(Math.random() * 256)},${Math.floor(Math.random() * 256)})`)

      GridItem() {
        Text("7")
      }
      .backgroundColor(`rgb(${Math.floor(Math.random() * 256)},${Math.floor(Math.random() * 256)},${Math.floor(Math.random() * 256)})`)

      GridItem() {
        Text("8")
      }
      .backgroundColor(`rgb(${Math.floor(Math.random() * 256)},${Math.floor(Math.random() * 256)},${Math.floor(Math.random() * 256)})`)
      .columnStart(2)
      .columnEnd(4)

    }
    .rowsTemplate('1fr 1fr 1fr')
    .columnsTemplate('1fr 1fr 1fr 1fr')
    .width("100%")
    .height(300)
  }
}
