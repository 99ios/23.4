//: Playground - noun: a place where people can play

import UIKit

/*****************1.定义字符串******************/
let aString = " A string with literal value"
let specailString = "String with \"special value\""
var emptyString = String()

//通过isEmpty属性判断字符串是否为空
if emptyString.isEmpty{
    print("emptyString is empty")
}

emptyString += aString //连接操作
var antoherString = emptyString //赋值操作，值复制
antoherString += specailString  //改变字符串
emptyString //跟antoherString不同了

/****************2.字符串基本操作****************/
var str = "Hello Swift"
/*
 str.characters 是字符串变量的字符集合
 temp 是临时变量
 for in 会遍历字符集合，然后把每个字符赋值给临时变量
 */

for temp in str.characters {
    print(temp,terminator:"")
}
print("\nCount:",terminator:"");
let count = str.characters.count
print(count);



let constStr = "Who is"
var varStr = " Li's"
varStr = constStr + varStr
//现在varStr的值是"Who is Li's "
varStr += " and Han"
//现在varStr的值是 "Who is Li's and Han"


let one = 1
let two = 2
let output = "\(one) add \(two)  equal to \(one+two)"
//output的值是：1 add 2 equal to 3


let str1 = "I am a str."
let str2 = "I am a str."
let str3 = "I am a str too."
if str1 == str2 {
    print("str1 is equal to str2")
}
//打印输出 "str1 is equal to str2"
if str1 != str3{
    print("str1 is not equal to str3")
}
//打印输出 "str1 is not equal to str3"
if str1.hasPrefix("I am"){
    print("str1 has prefix string \"I am\"")
}
//打印输出 "str1 has prefix string "I am""
if str1.hasSuffix("str."){
    print("str1 has suffix string \"str.\"")
}
//打印输出 "str1 has suffix string "str.""


/***********3.获取和修改字符串中的值**************/

let sayIt = "Just do It!"
sayIt[sayIt.startIndex] // J
sayIt[sayIt.index(before:sayIt.endIndex)] // !
sayIt[sayIt.index(after:sayIt.startIndex)]// u
let index = sayIt.index(sayIt.startIndex,offsetBy:5)
sayIt[index] //d

//for循环遍历字符串，通过字符串的characters的indices属性来获取字符串所有的下标集合
for index in sayIt.characters.indices {
    print("\(sayIt[index]) ", terminator:"")
}
// 打印结果： "J u s t  d o  I t ! "

//sayIt[sayIt.endIndex] // 报错，越界
//sayIt.index(after: sayIt.endIndex) // 报错，越界


var sayHello = "Say"
sayHello.insert("!",at:sayHello.endIndex)
//sayHello现在是“Say!"

sayHello.insert(contentsOf:" hello".characters, at: sayHello.index(before: sayHello.endIndex))
//sayHello现在是"Say hello!"

sayHello.remove(at:sayHello.index(before:sayHello.endIndex))
//sayHello现在是"Say hello"

let range = sayHello.index(sayHello.endIndex, offsetBy:-6)..<sayHello.endIndex
sayHello.removeSubrange(range)
//sayHello现在是“Say"


