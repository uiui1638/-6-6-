@Styles function button1(){
  .height(40)
  .backgroundColor('rgb(255,107,107)').margin({
    top:5
  })

}
@Styles function button2(){
  .height(40)
  .backgroundColor('rgb(0，0，255)').margin({
    top:5
  })
}

@Styles function gardientBackground(){
  .linearGradient({
    angle:135,
    colors: [['#667eea', 0.0], ['#764ba2', 0.3]]
  })
}

@Builder
function GridItemCard1(item: GeneratedTypeLiteralInterface_1) {
  Image(item.icon)
    .width(40)
    .height(60)
    .padding(10)
  Text(item.name)
    .fontSize(16)
    .fontColor('#333')
    .textAlign(TextAlign.Center)
}

@Builder
function GridItemCard2(item: GeneratedTypeLiteralInterface_2) {
  Row(){
    Text(item.tag)
      .textAlign(TextAlign.Center)
      .fontSize(12)
      .fontColor(Color.White)
      .backgroundColor('rgb(255,107,107)')
      .borderRadius(5)
      .width(40).height(20)
      .position({
        left: 10,
        top: 10
      })

  }
  .backgroundImage(item.image)
  .width('90%')
  .height(100)
  .borderRadius(8).margin({top:10})
  Row(){
    Text(item.name).textAlign(TextAlign.Start)

      .fontSize(12)
      .fontWeight(FontWeight.Bold)
      .fontColor('#333')
      .padding({
        top:5,bottom:5,left:10
      })
  }.width('100%')
  Row(){
    Text(item.price)
      .fontColor('rgb(255,107,107)').textAlign(TextAlign.Start)
      .padding({left:10})
  }.width('100%')
}

@Builder
function GridItemCard3(item: GeneratedTypeLiteralInterface_2) {
  Row(){
    Text(item.tag)
      .textAlign(TextAlign.Center)
      .fontSize(12)
      .fontColor(Color.White)
      .backgroundColor('rgb(255,107,107)')
      .borderRadius(5)
      .width(40).height(20)
      .position({
        left: 10,
        top: 10
      })

  }
  .backgroundImage(item.image)
  .width('90%')
  .height(100)
  .borderRadius(8).margin({top:10})
  Row(){
    Text(item.name).textAlign(TextAlign.Start)

      .fontSize(12)
      .fontWeight(FontWeight.Bold)
      .fontColor('#333')
      .padding({
        top:5,bottom:5,left:10
      })
  }.width('100%')
  Row(){
    Text(item.price)
      .fontColor('rgb(255,107,107)').textAlign(TextAlign.Start)
      .padding({left:10})
  }.width('100%')
}

/**
 * 商品分类数据接口
 * 定义分类图标、名称和颜色属性
 */
interface GeneratedTypeLiteralInterface_1 {
  icon: string; // 分类图标（emoji）
  name: string; // 分类名称
  color: string; // 分类背景颜色
}

/**
 * 商品信息数据接口
 * 定义商品的基本信息属性
 */
interface GeneratedTypeLiteralInterface_2 {
  name: string; // 商品名称
  price: string; // 商品价格
  image: Resource; // 商品图片资源
  tag: string; // 商品标签（热销、新品等）
}

@Extend(Text) function glowText(glowColor:ResourceColor){
  .fontColor(Color.White)
  .textShadow({radius: 4, color: glowColor, offsetX: 1, offsetY: 1})
.fontWeight(FontWeight.Medium)
  .fontSize(25)
  .fontColor(Color.White)
}

@Entry
@Component
struct shop{




  @State text: string = '';
  // 轮播图文案数据数组
  private bannerData: string[] = [  '🛍 限时特惠活动', // 特惠活动横幅
  '🎉 新品上市折扣', // 新品折扣横幅
  '💝 会员专享优惠', // 会员优惠横幅
  '🚀 品牌特卖节'    // 特卖节横幅
];

  // 商品分类数据数组 - 6个主要分类
  private categories: Array<GeneratedTypeLiteralInterface_1> = [  { icon: '📱', name: '数码产品', color: '#FF6B6B' }, // 数码产品 - 珊瑚红
    { icon: '👕', name: '服装时尚', color: '#4ECDC4' }, // 服装时尚 - 青色
    { icon: '🏠', name: '家居用品', color: '#45B7D1' }, // 家居用品 - 蓝色
    { icon: '🍔', name: '美食餐饮', color: '#FFA726' }, // 美食餐饮 - 橙色
    { icon: '📚', name: '图书文具', color: '#AB47BC' }, // 图书文具 - 紫色
    { icon: '🎮', name: '游戏娱乐', color: '#66BB6A' }  // 游戏娱乐 - 绿色
  ];  // 热销商品数据数组 - 4个推荐商品
  private hotProducts: Array<GeneratedTypeLiteralInterface_2> = [
    { name: 'HarmonyOS 智能手机', price: '¥2,999', image: $r('app.media.background'), tag: '热销' },
    { name: '无线蓝牙耳机', price: '¥299', image: $r('app.media.background'), tag: '新品' },
    { name: '智能手表', price: '¥1,299', image: $r('app.media.background'), tag: '限时' },
    { name: '笔记本电脑', price: '¥5,999', image: $r('app.media.background'), tag: '推荐' },



  ];

  // 推荐商品数据数组 - 6个推荐商品，用于底部网格展示
  private recommendProducts: Array<GeneratedTypeLiteralInterface_2> = [  { name: '智能音箱', price: '¥199', image: $r('app.media.background'), tag: '推荐' },
    { name: '无线充电器', price: '¥299', image: $r('app.media.background'), tag: '热销' },
    { name: '蓝牙键盘', price: '¥399', image: $r('app.media.background'), tag: '新品' },
    { name: '智能手环', price: '¥499', image: $r('app.media.background'), tag: '限时' },
    { name: '无线鼠标', price: '¥599', image: $r('app.media.background'), tag: '推荐' },
    { name: '平板电脑', price: '¥699', image: $r('app.media.background'), tag: '热销' }
  ];


build(){
    Column() {
      Row() {
        Row(){
          TextInput({text:this.text,placeholder:'搜索商品'})
            .fontSize(18)
            .fontColor('#333')
            .padding({right:15})
        }.width('80%')
        Row(){Image($r('app.media.startIcon'))
          .width(30)
          .height(30)
          .borderRadius(12)}.padding({left:5})
          .backgroundColor('rgb(255,107,107)').borderRadius(15).width(40).height(40)
      }.width('90%').height(60)
      .margin({top:10})
      Scroll(){
      Column(){
        Row() {
    Swiper() {
      ForEach(this.bannerData, (item: string) => {
          Column() {
           Text(item)
             .glowText( Color.White)
       // 占据剩余空间
      // .backgroundColor('#F5F5F5')
      .padding({
        left: 60,
        top: 20,
      })
      .borderRadius(8)
      // .shadow({ radius: 4, color: '#1A000000', offsetX: 1, offsetY: 1 })
      .width('100%')
    Text("点击抢购")
      .padding({top:5})
      .fontColor(Color.White)
    Button("查看详情")
      .fontColor(Color.White)
      .backgroundColor('rgb(255,107,107)')
      .width(120)
      .margin({
        top:10
      })

  }.animation({
            duration:500,curve:Curve.EaseInOut
          })
})
    }
    .loop(true)
    .autoPlay(true)
    .interval(3000)
    .borderRadius(20)
    .indicator(Indicator.dot()
      .selectedColor(Color.White)
      .selectedItemWidth(6)
      .selectedItemWidth(6)
      .itemWidth(6)
      .itemHeight(6)

      //小米有品
    )
    .width('90%').height(160)
          .gardientBackground()
        }
        Row() {
          Column(){
            Row(){
              Text("商品分类")
                .fontSize(20).fontStyle(FontStyle.Normal).fontWeight(FontWeight.Bold)
              Text("更多 >").padding({
                left:190
              })
            }.width("100%").height(40)
            Row(){
             Grid(){
               ForEach(this.categories, (item: GeneratedTypeLiteralInterface_1) => {
                 GridItem(){
                   Column(){
                     GridItemCard1(item)
                   }
                 }.backgroundColor(item.color).margin({top:8,left:8,right:8,bottom:8}).borderRadius(8)
               })
            }.columnsTemplate('1fr 1fr 1fr')
             .rowsTemplate('1fr 1fr ')
            }.width('100%').height(300)
          }.width('90%').height(340)
        }
        Row(){
          Column(){
            Row(){
              Image($r('app.media.hotsale'))
                .width(30).height(30)
              Text("热销推荐")
                .fontColor('rgb(255,110,110)')
                .fontWeight(FontWeight.Bold)
                .padding({right:140})
                .fontSize(20)
              Text("查看全部").fontColor(Color.Gray)
            }.width('100%').height(50)
            Row(){
              Grid(){
              ForEach(this.hotProducts, (item: GeneratedTypeLiteralInterface_2) => {
                GridItem(){
                  Column(){
                    GridItemCard2(item)
                    Button("立即购买").fontColor(Color.White).button1()

                  }.height(210)
                }.width('45%').backgroundColor('rgb(255,255,255)').shadow({
                  radius: 20,
                  color: '#1A000000',
                  offsetX: 1,
                  offsetY: 1
                })
              })
              }.columnsTemplate('1fr 1fr').backgroundColor('rgb(248,249,250)')


            }.width('100%').height(400)
          }.width('90%')
        }
        Row(){
          Column(){
            Row(){
              Text("为你推荐")
                .fontColor('rgb(255,110,110)')
                .fontWeight(FontWeight.Bold)
                .padding({right:140})
                .fontSize(20)
            }.width('100%').height(50).position({
              top:10
            })
            Row(){
              Grid(){
                ForEach(this.recommendProducts, (item: GeneratedTypeLiteralInterface_2) => {
                  GridItem(){
                    Column(){
                      GridItemCard3(item)
                      Button("加入购物车")
                        .fontColor(Color.White)
                        .button2()
                    }.height(210)
                  }.width('45%').backgroundColor('rgb(255,255,255)').shadow({
                    radius: 20,
                    color: '#1A000000',
                    offsetX: 1,
                    offsetY: 1
                  })
                })
              }.backgroundColor('rgb(248,249,250)')
              .rowsTemplate('1fr').height(200)

            }.width('100%').height(300).margin({bottom:20})
            Row(){}.height(50)
          }.width('90%')
        }
        }.width('100%')
      }.width('100%')
    }.width('100%').height('100%')
  }
}