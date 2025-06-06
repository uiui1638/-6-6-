@Builder
function NavItem(icon: ResourceStr ,title: string ) {
  Column({space:8}){
    Image(icon)
      .width(40).height(40)
    Text(title)
      .fontSize(12)
      .fontColor('#333')
  }.width(80).onClick(() => {console.info(`点击了${title}`)})
}
@Entry
@Component
struct BuilderDemo{
  build(){
    Row({space:20}){
      NavItem('$icons.home',"首页")
      NavItem('$icons.message',"消息")
      NavItem('$icons.friends',"好友")
      NavItem('$icons.setting',"设置")
    }
  }
}