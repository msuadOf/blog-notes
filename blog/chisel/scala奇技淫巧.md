# scala奇技淫巧

## 1. 部分函数

形如：`{case x => ...}`

综述：他的便捷性是和匿名函数比较起来的

### 模式匹配（实现高代码密度）

- ```scala
  (0::1::2::Nil).map{
      case x:Int => x.toString
      case s:String => s
      case _ => throw new IllegalArgumentException(s"Unsupported type: ${x.getClass.getName}")
  }
  ```
### 解构元组（Tupple）
- ```scala
  scala> 0::1::2::Nil zip 3::4::5::Nil map { case (a,b) => a+b }
  val res2: List[Int] = List(3, 5, 7)
  ```

  
  