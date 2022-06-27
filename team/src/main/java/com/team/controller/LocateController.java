package com.team.controller;

import java.io.File;
import java.io.IOException;
import javax.inject.Inject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import com.team.domain.FieldDTO;
import com.team.service.FieldService;

@Controller
public class LocateController {

	@Inject
	private FieldService fieldService;

	@RequestMapping(value = "/locate/locate", method = RequestMethod.GET)
	public String locate() {
		// /WEB-INF/views/notice/notice.jsp
		return "/locate/locate";
	}
	
	@RequestMapping(value = "/locate/field", method = RequestMethod.GET)
	public String field() {
		// /WEB-INF/views/notice/notice.jsp
		return "/locate/fieldForm";
	}

	@RequestMapping(value = "/locate/fieldPro", method = RequestMethod.POST)
	public String fieldPro(@RequestParam String f_name, @RequestParam String district,
			@RequestParam String f_address, @RequestParam String terms, @RequestParam String price,
			@RequestParam MultipartFile f_img) throws IOException {
		FieldDTO fieldDTO = new FieldDTO();
		String imgName= f_img.getOriginalFilename();
			
//		fieldDTO.setF_num(Integer.parseInt(f_num));
		fieldDTO.setF_name(f_name);
		fieldDTO.setDistrict(district);
		fieldDTO.setF_address(f_address);
		fieldDTO.setTerms(terms);
		fieldDTO.setF_img(imgName);
		fieldDTO.setPrice(Integer.parseInt(price));

		String path = "D:\\STS\\team\\src\\main\\webapp\\resources\\img";

		File saveFile = new File(path, imgName);

		f_img.transferTo(saveFile);

		fieldService.insertFeild(fieldDTO);

		// /WEB-INF/views/notice/notice.jsp
		return "redirect:/";
	}
}
