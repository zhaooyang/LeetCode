//
//  Q933.swift
//  Questions
//
//  Created by zhaoyang on 2020/10/15.
//  Copyright © 2020 zhaoyang. All rights reserved.
//

import Cocoa
/*
 写一个 RecentCounter 类来计算特定时间范围内最近的请求。

 请你实现 RecentCounter 类：

 RecentCounter() 初始化计数器，请求数为 0 。
 int ping(int t) 在时间 t 添加一个新请求，其中 t 表示以毫秒为单位的某个时间，并返回过去 3000 毫秒内发生的所有请求数（包括新请求）。确切地说，返回在 [t-3000, t] 内发生的请求数。
 保证每次对 ping 的调用都使用比之前更大的 t 值。

  

 示例 1：

 输入：
 ["RecentCounter", "ping", "ping", "ping", "ping"]
 [[], [1], [100], [3001], [3002]]
 输出：
 [null, 1, 2, 3, 3]

 解释：
 RecentCounter recentCounter = new RecentCounter();
 recentCounter.ping(1);     // requests = [1]，范围是 [-2999,1]，返回 1
 recentCounter.ping(100);   // requests = [<u>1</u>, <u>100</u>]，范围是 [-2900,100]，返回 2
 recentCounter.ping(3001);  // requests = [<u>1</u>, <u>100</u>, <u>3001</u>]，范围是 [1,3001]，返回 3
 recentCounter.ping(3002);  // requests = [1, <u>100</u>, <u>3001</u>, <u>3002</u>]，范围是 [2,3002]，返回 3
  

 提示：

 1 <= t <= 10^4
 保证每次对 ping 的调用都使用比之前更大的 t 值
 至多调用 ping 方法 10^4 次

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/number-of-recent-calls
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */
class Q933: NSObject {

}
class RecentCounter {

    var list: [Int]
    init() {
        list = [Int]()
    }
    
    func ping(_ t: Int) -> Int {
        list.append(t)
        while list.first! < (t-3000) {
            list.removeFirst()
        }
        return list.count
    }
}
