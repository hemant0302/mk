package model;

import javax.validation.constraints.DecimalMin;
import javax.validation.constraints.NotNull;

public class Product {
	@NotNull(message="{price.empty}")
	@DecimalMin(value="0",message="{price.number}")
private Double productPrice;
private String productType;
public double getProductPrice() {
	return productPrice;
}
public void setProductPrice(double productPrice) {
	this.productPrice = productPrice;
}
public String getProductType() {
	return productType;
}
public void setProductType(String productType) {
	this.productType = productType;
}

}
