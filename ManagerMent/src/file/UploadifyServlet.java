package file;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jdk.nashorn.internal.runtime.regexp.joni.Config;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
 
public class UploadifyServlet extends HttpServlet {
 
	private static final long serialVersionUID = 1L;

	@SuppressWarnings("unchecked")
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException 
	{
		System.out.println("------------");
		// 设置文件服务器上传路径
		String path = "D:\\GitRepository\\SCSSMSP\\images";
		// 创建工厂 用于管理文件上传的工具类
		DiskFileItemFactory factory = new DiskFileItemFactory(); 
		// 设置临时存放目录
		factory.setRepository(new File(path));
		// 如果大于这个大小的文件就临时存放在path路径下，否则直接存放在内存中
		factory.setSizeThreshold(1024);
		
		// 用于文件上传的执行类.可以将一个DiskFileItemFactory做为构造参数传入.
		ServletFileUpload upload = new ServletFileUpload(factory);
		
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("UTF-8");
		
		String fileName = "";
		try{
			// FileItem 为表单传过来的属性,可以获取到前端表单的文件列表
			List<FileItem> list = upload.parseRequest(request);
			for(FileItem item:list){
				if(item.isFormField()){
					// 属性名称
					String name = item.getFieldName();
					// 属性值
					String value = item.getString("utf-8");
					request.setAttribute(name, value);
				}else{
					// 如果当前元素是上传文件表单元素
					String name = item.getFieldName();
					String value = item.getName();
					int start = value.lastIndexOf("/");
					fileName = value.substring(start+1);
					
					item.write(new File(path,fileName));
				}
		}
			// 响应客户端
			PrintWriter pw = response.getWriter();
			pw.print(fileName);
		}catch(Exception e){
			e.printStackTrace();
		}
		
	}
 
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

}

