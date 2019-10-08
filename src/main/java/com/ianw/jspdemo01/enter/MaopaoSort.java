package com.ianw.jspdemo01.enter;/**
 * ClassName: MaopaoSort <br/>
 * Description: <br/>
 * date: 2019/9/30 11:00<br/>
 *
 * @author 72733<br />
 * @version
 * @since JDK 1.8
 */

/**
 *@program: jspdemo01
 *@description:
 *@author: tao xujie
 *@create: 2019-09-30 11:00
 */
public class MaopaoSort {
    /**
     * 第一种排序：冒泡排序
     */
    public static void main(String[] args) {
        int arr[] = {43,32,12,64,14,-1,37};
        int temp;
        for (int i = 0; i < arr.length; i++) {
            for (int j = 0; j < arr.length; j++) {
                if(arr[i]<arr[j]){
                    temp = arr[i];
                    arr[i] = arr[j];
                    arr[j] = temp;
                }
            }
        }
        //遍历排序后的数组
        for (int i = 0; i < arr.length; i++) {
            System.out.println(arr[i]);
        }
    }
}