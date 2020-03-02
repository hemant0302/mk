package controller;

import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.omg.CORBA.PUBLIC_MEMBER;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.Product;
import service.DiscountServiceInterface;


@Controller
public class HomeController {
	@Autowired
	DiscountServiceInterface discountService;
	
	@ModelAttribute("productTypeList")
	public List<String>populateProductType(){
		List<String> a = new ArrayList<String>();
		a.add("Electronic");
		a.add("Apparels");
		a.add("Toys");
		return a;
		
	}
	
	@RequestMapping(value = "/getDiscountedPrice", method = RequestMethod.GET)
	public String home(@ModelAttribute("product") Product product) {
		return "calculatediscount";
	}
	@GetMapping("/calculateDiscountedPrice")
	public String calculateDiscount(
			@ModelAttribute("product") @Valid Product product, BindingResult result, ModelMap map
			){
			if(result.hasErrors()){
				return "calculatediscount"; 
			}
			double pr = discountService.calculate(product);
			map.addAttribute("price",pr);
			return "finalprice";
	}
	

}
