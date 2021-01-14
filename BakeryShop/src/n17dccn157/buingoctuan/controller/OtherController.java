package n17dccn157.buingoctuan.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("other")
public class OtherController {
	@RequestMapping(value = "successful", params = "invoice")
	public String successful(ModelMap model,@RequestParam("invoice") int invoice) {
		model.addAttribute("invoice", invoice);
		return "other/successful";
	}
}
