package com.open.job.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.open.job.DTO.Company;
import com.open.job.DTO.Dday;
import com.open.job.DTO.Jobcategory;
import com.open.job.DTO.Location;
import com.open.job.DTO.Post;
import com.open.job.DTO.Type;
import com.open.job.IDAO.SearchDAO;
import com.open.job.IService.SearchService;

@Service
public class SearchServiceImpl implements SearchService {
	@Autowired
	private SearchDAO sdao;

	@Override
	public List<Company> getCompanyList(String category, String searchWord) {
		if ("".equals(searchWord)) {
			return new ArrayList<Company>();
		} else {
			Map<String, String> map = new HashMap<String, String>();
	
			map.put("category", category);
			map.put("searchWord", searchWord);
	
			return sdao.getSearchCompanyList(map);
		}
	}

	@Override
	public List<Post> getPostList(String category, String searchWord) {
		if ("".equals(searchWord)) {
			return sdao.getAllPostList();
		} else {
			Map<String, String> map = new HashMap<String, String>();

			map.put("category", category);
			map.put("searchWord", searchWord);

			return sdao.getSearchPostList(map);
		}
	}

	@Override
		public List<Post> getResult(String location, String jobcate, String career, String Type, String dday) {
			String[] loca = (location.equals("null")? null:location.split(","));
			String[] job = (jobcate.equals("null")? null:jobcate.split(","));
			String[] care = (career.equals("null")? null:career.split(","));
			String[] type = (Type.equals("null")? null:Type.split(","));
			String[] day = (dday.equals("null")? null:dday.split(","));
			
			List<Post> resultLst = sdao.getResult(loca, job, care, type, day);
			
	//		String str = "";
	//		for(Post post:lst) {
	//			str += "<table id='searched' border=\"0\" style=\"min-width: 600px;\">\r\n" + 
	//					"								<tr>\r\n" + 
	//					"									<td style=\"width: 130px; padding: 1px;\" rowspan=\"3\"><a\r\n" + 
	//					"										href=\"/company/"+post.getCompanyno()+"/info\"><img\r\n" + 
	//					"											src=\"/companyimgs/"+ post.getThumbimg() +"\"\r\n" + 
	//					"											style=\"padding: 5px; width: 100px; border: 1px solid gray; border-radius: 7px;\"></a></td>\r\n" + 
	//					"									<td colspan=\"2\" style=\"font-size: 15px; font-weight: bold;\"><a href=\"/company/"+post.getCompanyno()+"/post/"+post.getPostno()+"\">"+post.getTitle()+"\r\n" + 
	//					"											</a></td>\r\n" + 
	//					"								</tr>\r\n" + 
	//					"								<tr>\r\n" + 
	//					"									<td colspan=\"2\"><a\r\n" + 
	//					"										href=\"/company/"+post.getCompanyno()+"/info\">"+post.getCompanyname()+"</a></td>\r\n" + 
	//					"								</tr>\r\n" + 
	//					"								<tr>\r\n" + 
	//					"									<td><span style=\"color:gray; font-size: 14px;\">"+ post.getLocation()+" · "+post.getJobcategory()+" · "+post.getSubjobcategory()+" · "+post.getType()+" · "+post.getCareer()+"</span></td>\r\n" + 
	//					"								</tr>\r\n" + 
	//					"							</table>" +
	//					"							<hr>";
	//		}
			return resultLst;
		}

	@Override
	public String getQuickCompSearch(String searchword, String onclickfunction_name) {
		String body = "";
		body		= "<style>"
					+ "span.shover:hover{"
					+ "background-color:#d9d9d9;"
					+ "}"
					+ "</style>";
		List<Company> compLst = sdao.getQuickCompSearch(searchword);
		for(Company comp:compLst) {
			body += "<div style=\"cursor:pointer; width:100%; height:30px;\"><span class=\"shover\" style=\"width:100%; height:100%; display:block;\" onclick=\""+onclickfunction_name+"('"+comp.getCompanyno()+","+comp.getCompanyname()+"')\">"+comp.getCompanyname()+"</span></div>";
		}
		return body;
	}

	@Override
	public List<Location> getLocation() {
		return sdao.getLocation();
	}

	@Override
	public List<Location> getSubLocation() {
		return sdao.getSubLocation();
	}

	@Override
	public List<Jobcategory> getjobcategory() {
		return sdao.getjobcategory();
	}
	
	@Override
	public List<Jobcategory> getSubjobcategory() {
		return sdao.getSubjobcategory();
	}
	
	@Override
	public List<Type> getType() {
		return sdao.getType();
	}
	
	@Override
	public List<Dday> getDday() {
		return sdao.getDday();
	}
}
