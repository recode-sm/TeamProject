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
		System.out.println("/locate/locate");
		// /WEB-INF/views/notice/notice.jsp
		return "/locate/locateForm";
	}

	@RequestMapping(value = "/locate/fieldPro", method = RequestMethod.POST)
	public String fieldPro(@RequestParam String f_num, @RequestParam String f_name, @RequestParam String f_type,
			@RequestParam String district, @RequestParam String paddress, @RequestParam String price, @RequestParam MultipartFile f_photo)
			throws IOException {
		FieldDTO fieldDTO = new FieldDTO();
//		String photo= f_photo.getOriginalFilename();
		
		fieldDTO.setF_num(Integer.parseInt(f_num));
		fieldDTO.setF_name(f_name);
		fieldDTO.setF_type(f_type);
		fieldDTO.setDistrict(district);
		fieldDTO.setPaddress(paddress);
		fieldDTO.setF_photo(f_photo.getOriginalFilename());
		fieldDTO.setPrice(Integer.parseInt(price));
		
		String path = "D:\\workspace_sts7\\team\\src\\main\\webapp\\resources\\img";

		File saveFile = new File(path, "name.gif");

		f_photo.transferTo(saveFile);
		
		System.out.println(f_photo.getOriginalFilename());
		
		fieldService.insertFeild(fieldDTO);

		// /WEB-INF/views/notice/notice.jsp
		return "redirect:/";
	}
}
