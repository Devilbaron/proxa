package cn.demon.web;

import cn.demon.entity.User;
import cn.demon.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.util.Iterator;

@Controller
public class MiaiController {

    @Autowired
    IUserService iUserService;

    //创建一个springmvc上传文件解析器
    @Autowired
    CommonsMultipartResolver multipartResolver;

    @RequestMapping("/miai")
    public String miaiIndex(){
        return "miai";
    }

    @RequestMapping(value = "/addmiai",method = RequestMethod.GET)
    public String addmiai(Model model,User user){
        //保存用户数据
        try {
            iUserService.addMiaiUser(user);
        }catch (Exception ex){
            ex.printStackTrace();
            return "no";
        }
        return "ok";
    }
    @RequestMapping("/upload2")
    public String upload2(HttpServletRequest request,HttpServletResponse response) throws IllegalStateException, IOException {

        String path="";
        String user = request.getParameter("user");
        //判断 request 是否有文件上传,即多部分请求
        if (multipartResolver.isMultipart(request)) {
            //转换成多部分request
            MultipartHttpServletRequest multiRequest = (MultipartHttpServletRequest) request;
            //取得request中的所有文件名
            Iterator<String> iter = multiRequest.getFileNames();
            while (iter.hasNext()) {
                //记录上传过程起始时的时间，用来计算上传时间
                int pre = (int) System.currentTimeMillis();
                //取得上传文件
                MultipartFile file = multiRequest.getFile(iter.next());
                if (file != null) {
                    //取得当前上传文件的文件名称
                    String myFileName = file.getOriginalFilename();
                    //如果名称不为“”,说明该文件存在，否则说明该文件不存在
                    if (myFileName.trim() != "") {
                        System.out.println(myFileName);
                        System.out.println(user);
                        //重命名上传后的文件名
                        String fileName = user + "_" + file.getOriginalFilename();
                        //定义上传路径
//                        String path = "H:/" + fileName;
                        path = request.getSession().getServletContext().getRealPath("/WEB-INF/Picture/") + fileName;

                        //检查路径存在
                        File urlpath = new File(request.getSession().getServletContext().getRealPath("/WEB-INF/Picture"));
                        if(!urlpath.exists())
                        {
                            System.out.println("路径不存在创建");
                            try {
                                urlpath.mkdir();
                            } catch (Exception e) {
                                // TODO Auto-generated catch block
                                e.printStackTrace();
                            }
                        }

                        File localFile = new File(path);
                        //检查路径存在
                        try {
                            file.transferTo(localFile);
                        } catch (IOException e) {
                            e.printStackTrace();
                        }
                    }
                }
                //记录上传该文件后的时间
                int finaltime = (int) System.currentTimeMillis();
                System.out.println(finaltime - pre);
            }
        }
        return path.toString();
    }
}
