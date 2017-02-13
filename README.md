# JYDouYuZB
# 模仿斗鱼直播

- 1.获取斗鱼图片资源的方式
	- 实用PP助手下载斗鱼（正版）
	- 解析包内容可以直接获取icon和launch等
	- 更多的图片资源放在Assert.car文件内，需要借助开源框架CarTool来获取

- 2.修改tabbar icon 选中时候的颜色
	- 在应用启动方法：
	
   ```Objc
   UITabBar.appearance().tintColor = UIColor.orangeColor()
   ```
	- iOS 9.0新特性：storyBoard的分离引用，可以避免多人开发同故事板造成冲突，【Editor->Refactoy to storyBoard】
	- 但是要适配iOS 8，就只能通过创建文件代码方式来引用

```

    override func viewDidLoad() {
        super.viewDidLoad()
        
        addChileVc("Home")
        addChileVc("Live")
        addChileVc("Fellow")
        addChileVc("Profile")
    }
    
    private func addChileVc(storyBoardName:String){
        // 通过storyBoard加载控制器
        let childVc = UIStoryboard(name: storyBoardName, bundle:nil).instantiateInitialViewController()!
        
        // 将childVc作为子控制器
        addChildViewController(childVc)
    }
    ```
