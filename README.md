# triangle

## 三角形の形を求める

### 問題

以下のように、与えられた三角形の3辺の長さから、三角形の形を表示するプログラムを作成してください。


```shell
$ ruby triangle.rb 2, 3, 4
不等辺三角形ですね！

$ ruby triangle.rb 2, 2, 1
二等辺三角形ですね！

$ ruby triangle.rb 1, 1, 1
正三角形ですね！

$ ruby triangle.rb 1, 2, 3
三角形じゃないです＞＜
```

### ゴール

* 問題を満足させるtriangle.rbを作成してください。
* triangle.rbがきちんと動いているか確かめるため、RSpecによるテストをtriangle_spec.rbとして作成してください。
