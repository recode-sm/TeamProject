package com.team.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.support.MultipartFilter;

import com.google.protobuf.compiler.PluginProtos.CodeGeneratorResponse.File;
import com.team.domain.FieldDTO;
import com.team.service.FieldService;

@Controller
public class LocateController {

	@Inject
	private FieldService fieldService;

	@RequestMapping(value = "/locate/locate", method = RequestMethod.GET)
	public String locate() {
		// /WEB-INF/views/notice/notice.jsp
		return "/locate/locateForm";
	}

	@RequestMapping(value = "/locate/fieldPro", method = RequestMethod.POST)
	public String fieldPro(FieldDTO fieldDTO, MultipartHttpServletRequest request) {
		
		MultipartFile file = request.getFile("f_photo");
		
		String path = request.getSession().getServletContext().getRealPath("/resources/");
		System.out.println("Path : " + path);
		
		String name =  file.getOriginalFilename();
		
		File dest = new  File(path+File.separator+name);
		
		file.transferTo(dest);
//		String path = mhsr.getServletContext().getRealPath("/upload");
		//업로드할 파일명
//        MultipartFile upload = mhsr.getFile("upload");
//		String name =  upload.getOriginalFilename();
		//파일을 저장할 위치 셋업
		
		//업로드 처리!
		
		
		
		
		
		fieldService.insertFeild(fieldDTO);
		// /WEB-INF/views/notice/notice.jsp
		return "redirect:/";
	}
}
