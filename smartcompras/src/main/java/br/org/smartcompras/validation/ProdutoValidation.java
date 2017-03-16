package br.org.smartcompras.validation;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import br.org.smartcompras.models.Produto;

public class ProdutoValidation implements Validator {
	


	@Override
	public boolean supports(Class<?> clazz) {
		
		return Produto.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
	//	Produto produto = (Produto) target;    
		
		ValidationUtils.rejectIfEmpty(errors, "produto", "field.required");
		ValidationUtils.rejectIfEmpty(errors, "imgProduto", "field.required");
		ValidationUtils.rejectIfEmpty(errors, "marca", "field.required");
		ValidationUtils.rejectIfEmpty(errors, "tipoProduto", "field.required");
		
		
		
	}
	

}
