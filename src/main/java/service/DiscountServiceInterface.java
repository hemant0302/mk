package service;

import org.springframework.stereotype.Service;

import model.Product;

@Service
public class DiscountServiceInterface {
	public double calculate(Product product) {
		double discount = 0;
		System.out.println(product.getProductType());
		switch (product.getProductType()) {
		case "Electronic":
			discount = 0.25;
			break;
		case "Apparels":
			discount = 0.1;
			break;
		case "Toys":
			discount = 0.5;
			break;

		default:
			break;
		}
		return product.getProductPrice() - (product.getProductPrice() * discount);

	}
}
