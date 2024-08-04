package com.example;

import java.util.Random;

import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import jakarta.servlet.http.HttpSession;
@Controller
public class GuessController {
	@GetMapping("/")
    public String index(HttpSession session) {
		Random random = new Random();
        session.setAttribute("targetNumber", (int)  random.nextInt(6) + 1);
        return "index";
    }

    @PostMapping("/guess")
    public String guess(@RequestParam("guess") int guess, HttpSession session, Model model) {
        int targetNumber = (int) session.getAttribute("targetNumber");
        String resultMessage;
        String resultMessageClass = "text-danger";
System.out.println(targetNumber);
        if (guess == targetNumber) {
        
            resultMessage = "Congratulations! You guessed the correct number!";
            resultMessageClass = "winner";
        } else if (guess < targetNumber) {
            resultMessage = "Too low! Try again.";
        } else {
            resultMessage = "Too high! Try again.";
        }

        model.addAttribute("resultMessage", resultMessage);
        model.addAttribute("resultMessageClass", resultMessageClass);

        return "result";
    }
    @ResponseBody
    @RequestMapping("/c")
    public String check() {
    	return "working";
    }
}
