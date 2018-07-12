package cn.demon.web;

import cn.demon.utils.GetWebProjectRealPathTool;

public class MiaiBaseControll {
    public static String RootPath = GetWebProjectRealPathTool.class.getClassLoader().getResource("/").getPath();

}

