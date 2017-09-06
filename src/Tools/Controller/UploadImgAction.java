package Tools.Controller;

import com.opensymphony.xwork2.ActionSupport;

import java.io.*;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

public class UploadImgAction extends ActionSupport {
    private File imgfile; //多个文件 ，如果单个文件 ，就定义成  File image ;
    private String imgfileFileName;//多个文件名 ，如果单个文件 ，就定义成  String imageFileName ;
    private String imgfileContentType;//多个文的内容类型,如果 单个文件就定义成 String imageContentType
    private String message = "0";

    private String shellcmd = "/home/scu/Documents/fapiao/imgOCR.sh";

    // 记录Shell执行状况的日志文件的位置(绝对路径)
    private String executeShellLogFile = "/home/scu/Documents/fapiao/executeShell.log";

    private String imgpath = "/var/www/html/uploadImage/" + imgfileFileName;

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public File getImgfile() {
        return imgfile;
    }

    public void setImgfile(File imgfile) {
        this.imgfile = imgfile;
    }

    public String getImgfileFileName() {
        return imgfileFileName;
    }

    public void setImgfileFileName(String imgfileFileName) {
        this.imgfileFileName = imgfileFileName;
    }

    public String getImgfileContentType() {
        return imgfileContentType;
    }

    public void setImgfileContentType(String imgfileContentType) {
        this.imgfileContentType = imgfileContentType;
    }

    @Override
    public String execute() throws Exception {
        String PATH = "/var/www/html/uploadImage/";
        System.out.println(imgfile);
        System.out.println(imgfileFileName);
        System.out.println(imgfileContentType);

        try {
            if (imgfile != null && (imgfileContentType.endsWith("png") || imgfileContentType.endsWith("jpeg"))) {

                //得到输入流，通过struts已经得到名为upload的控件的值
                InputStream is = new FileInputStream(imgfile);

                //得到输出流
                OutputStream os = new FileOutputStream(PATH + imgfileFileName);

                //分配接受缓冲区
                byte buffer[] = new byte[1024];
                int count = 0;
                while ((count = is.read(buffer)) > 0) {
                    os.write(buffer, 0, count);
                }

                is.close();
                os.flush();

                message = executeShell(shellcmd);
                return SUCCESS;
            }
        } catch (Exception e) {
            e.printStackTrace();
            message = "0";
        }
        message = "0";
        System.out.println(message);
        return ERROR;

    }

    //Java执行shell脚本
    public String executeShell(String shellCommand) throws IOException {
        System.out.println("shellCommand:" + shellCommand);
        int success = 0;
        StringBuffer stringBuffer = new StringBuffer();
        BufferedReader bufferedReader = null;
        // 格式化日期时间，记录日志时使用
        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:SS ");

        Process process = null;
        String[] cmd = {"/bin/sh", "-c", shellCommand + " " + imgpath};

        try {
            process = Runtime.getRuntime().exec(cmd);
            if (process != null) {
                // bufferedReader用于读取Shell的输出内容
                bufferedReader = new BufferedReader(new InputStreamReader(process.getInputStream()), 1024);
                process.waitFor();
            } else {

            }

            String line = "";
            // 读取Shell的输出内容，并添加到stringBuffer中
            while (bufferedReader != null && (line = bufferedReader.readLine()) != null) {
                stringBuffer.append(line);
            }
        } catch (Exception ioe) {
            stringBuffer.append("执行Shell命令时发生异常：\r\n").append(ioe.getMessage())
                    .append("\r\n");
        }
        return stringBuffer.toString();
    }
}

