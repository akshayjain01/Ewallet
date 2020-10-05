package com.example.ewallet.walletapp.controller;

import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.example.ewallet.datatransferobject.TransactionDTO;
import com.example.ewallet.datatransferobject.UserAccountDTO;
import com.example.ewallet.datatransferobject.mapper.TransactionMapper;
import com.example.ewallet.datatransferobject.mapper.UserAccountMapper;
import com.example.ewallet.exceptions.UserNotFoundException;
import com.example.ewallet.models.Transaction;
import com.example.ewallet.models.UserAccount;
import com.example.ewallet.service.TransactionService;
import com.example.ewallet.service.UserAccountService;

import io.swagger.annotations.ApiOperation;

@RestController
public class UserAccountController {

	@Autowired
	private UserAccountService userAccountService;

	@Autowired
	private TransactionService transactionService;

	@RequestMapping(value = "register", method = RequestMethod.POST)
	public String register(@RequestBody UserAccountDTO userAccountDTO) {
		UserAccount saved;
			try {
				saved = userAccountService.save(UserAccountMapper.dtoToDO(userAccountDTO));
			} catch (Exception e) {
				e.printStackTrace();
			}
		return "login";
	}

	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String login(@RequestParam String email, @RequestParam String password,ModelMap modelMap) {
		UserAccount userAccount;
			userAccount = userAccountService.userAccountByEmail(email);
			if(userAccount.getPassword().equals(password)) {
				modelMap.addAttribute("user", userAccountService.userAccountByEmail(email));
				return "homepage"; 
			}
			else {
				modelMap.addAttribute("msg", "Invalid Username or Password. Please Try Again");
			}
			return "login";
		}
	
	@RequestMapping(value = "/passbook")
	public String getUserPassbook(@RequestParam Long id, ModelMap modelMap) {
		List<Transaction> passbook;
		try {
			passbook = transactionService.transactionsByUserAccountID(id);
			modelMap.addAttribute("transactions", passbook);
			return "passbook";
		}
		catch(Exception e) {}
		return null;
		}
	
}