常见问题：

1、如何选择框架版本
开发者可以在工程目录下jni/application.mk文件第一行找到stl库类型设置
如果此处设置的是
APP_STL := gnustl_static，则表示当前工程以gnu静态库的方式引入使用stl标准库，此时应选择集成protocols_gnustl_static这个文件夹中的框架资源。反之，则应选择集成protocols_stlport_static文件夹中的框架资源。

注：Cocos2d-x 3.2版本请使用protocols_c++_static版本