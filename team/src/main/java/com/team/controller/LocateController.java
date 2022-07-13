package com.team.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.team.domain.FieldDTO;
import com.team.service.FieldService;

@Controller
public class LocateController {

	@Inject
	private FieldService fieldService;

	@Resource(name = "uploadPath")
	private String uploadPath;

	@RequestMapping(value = "/locate/locate", method = RequestMethod.GET)
	public String locate(Model model) {

		List<FieldDTO> fieldList = fieldService.getFieldList();

		model.addAttribute("fieldList",fieldList);
		// /WEB-INF/views/notice/notice.jsp
		return "locate/locate";
	}

	@RequestMapping(value = "/locate/field", method = RequestMethod.GET)
	public String field() {
		// /WEB-INF/views/notice/notice.jsp
		return "locate/fieldForm";
	}

	@RequestMapping(value = "/locate/fieldPro", method = RequestMethod.POST)
	public String fieldPro(HttpServletRequest request, MultipartFile f_img) throws IOException {
		FieldDTO fieldDTO = new FieldDTO();

		fieldDTO.setF_name(request.getParameter("f_name"));
		fieldDTO.setDistrict(request.getParameter("district"));
		fieldDTO.setF_address(request.getParameter("f_address"));
		fieldDTO.setTerms(request.getParameter("terms"));
		fieldDTO.setPrice(Integer.parseInt(request.getParameter("price")));

		UUID uuid = UUID.randomUUID();
		String fieldName = uuid.toString() + "_" + f_img.getOriginalFilename();
		File uploadFile = new File(uploadPath, fieldName);
		FileCopyUtils.copy(f_img.getBytes(), uploadFile);

		fieldDTO.setF_img(fieldName);

		fieldService.insertFeild(fieldDTO);

		// /WEB-INF/views/notice/notice.jsp
		return "redirect:/";
	}
	
	@RequestMapping(value = "/locate/fieldUpdate", method = RequestMethod.GET)
	public String fieldUpdate(HttpServletRequest request, Model model) throws IOException {
		int f_num = Integer.parseInt(request.getParameter("f_num"));
		FieldDTO fieldDTO = new FieldDTO();
		
		fieldDTO = fieldService.getField(f_num);
		
		model.addAttribute("fieldDTO",fieldDTO);
		// /WEB-INF/views/notice/notice.jsp
		return "locate/fieldUpdate";
	}
	
	@RequestMapping(value = "/locate/fieldUpdatePro", method = RequestMethod.POST)
	public String fieldUpdatePro(HttpServletRequest request, FieldDTO fieldDTO) throws IOException {
		
		fieldService.fieldUpdatePro(fieldDTO);

		// /WEB-INF/views/notice/notice.jsp
		return "redirect:/locate/locate";
	}
	
}
