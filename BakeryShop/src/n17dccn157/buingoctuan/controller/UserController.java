package n17dccn157.buingoctuan.controller;

import java.util.List;
import java.util.Random;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import n17dccn157.buingoctuan.bean.Cart;
import n17dccn157.buingoctuan.entity.Account;
import n17dccn157.buingoctuan.entity.Role;

@Transactional
@Controller
@RequestMapping("/user/")
public class UserController {
	@Autowired
	SessionFactory factory;

	@ModelAttribute("listUser")
	public List<Account> getLUser() {
		Session session = factory.getCurrentSession();
		String hql = "From Account";
		Query query = session.createQuery(hql);
		List<Account> listUser = query.list();
		return listUser;
	}

	// Dang nhap


	// Dang nhap
	@RequestMapping(value = "login", method = RequestMethod.GET)
	public String login(ModelMap model) {
		model.addAttribute("user", new Account());
		return "user/login";
	}

	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String login(ModelMap model, HttpSession httpSession, @ModelAttribute("user") Account user,
			BindingResult errors) throws InterruptedException {
		Session session = factory.getCurrentSession();
		Account acc = null;
		List<Account> listUser = getLUser();
		for (Account account : listUser) {
			if (account.getUser_name().equals(user.getUser_name())) {
				acc = account;
				break;
			}
		}

		if (user.getUser_name().trim().length() == 0) {
			errors.rejectValue("user_name", "user", "Yêu cầu nhập đúng tài khoản");
		}

		if (user.getPassword().trim().length() == 0) {
			errors.rejectValue("password", "user", "Yêu cầu nhập đúng mật khẩu");
		}
		if (acc == null) {
			model.addAttribute("message", "Tên tài khoản hoặc mật khẩu không đúng!");
		} else if (user.getPassword().equals(acc.getPassword())) {
			Thread.sleep(1000);
			httpSession.setAttribute("user", acc);
			return "redirect:/";
		} else
			model.addAttribute("message", "Tên tài khoản hoặc mật khẩu không đúng!");

		return "user/login";

	}

	// Tao tai khoan
	@RequestMapping(value = "register", method = RequestMethod.GET)
	public String register(ModelMap model) {
		model.addAttribute("user", new Account());

		return "user/register";
	}

	@RequestMapping(value = "register", method = RequestMethod.POST)
	public String register(ModelMap model, @ModelAttribute("user") Account user, BindingResult errors) {

		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		List<Account> l = getLUser();
		if (user.getUser_name().trim().length() == 0) {
			errors.rejectValue("user_name", "user", "Yêu cầu nhập đúng tài khoản");
		} else {
			for (Account a : l) {
				if (a.getUser_name().equalsIgnoreCase(user.getUser_name())) {
					errors.rejectValue("user_name", "user", "Tên tài khoản đã tồn tại");
				}
			}
		}

		if (user.getPassword().trim().length() == 0) {
			errors.rejectValue("password", "user", "Yêu cầu nhập đúng mật khẩu");
		} else {
			if (!user.getPassword().matches("^.*(?=.{8,})(?=..*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&+=]).*$")) {
				errors.rejectValue("password", "user",
						"Nhập trên 8 kí tự trong đó có chữ Hoa thường và ký tự đặc biệt");
			}
		}

		if (user.getFullname().trim().length() == 0) {
			errors.rejectValue("fullname", "user", "Yêu cầu nhập đúng fullname");
		}

		String regex = "^[a-zA-Z0-9_!#$%&'*+/=?`{|}~^.-]+@[a-zA-Z0-9.-]+$";
		Pattern pattern = Pattern.compile(regex);
		if (user.getEmail().trim().length() == 0) {
			errors.rejectValue("email", "user", "Email không được bỏ trống.");
		} else {
			Matcher matcher = pattern.matcher(user.getEmail().trim());
			if (!matcher.matches()) {
				errors.rejectValue("email", "user", "Email không đúng định dạng");
			} else {
				for (Account a : l) {
					if (a.getEmail().equalsIgnoreCase(user.getEmail())) {
						errors.rejectValue("email", "user", "Tên email đã tồn tại");
					}
				}
			}
		}

		// String regexNumber = "/^0[0-9]{8}$/";
		String regexNumber = "0\\d{9}";
		Pattern patternNumber = Pattern.compile(regexNumber);

		if (user.getPhone().trim().length() == 0) {
			errors.rejectValue("phone", "user", "Số điện thoại không được bỏ trống.");
		} else {
			Matcher matcher1 = patternNumber.matcher(user.getPhone().trim());
			if (!matcher1.matches())
				errors.rejectValue("phone", "user", "Yêu cầu nhập đúng Số điện thoại");
		}

		if (user.getGender() == null) {
			errors.rejectValue("gender", "user", "Yêu cầu nhập đúng gender");
		}

		Role r = (Role) session.get(Role.class, 2);
		user.setRoles(r);

		try {
			if (errors.hasErrors()) {
				model.addAttribute("message", "Tạo tài khoản thất bại");
			} else {
				session.save(user);
				t.commit();
				model.addAttribute("message", "Tạo tài khoản thành công");
				Session session2 = factory.openSession();
				Transaction t2 = session2.beginTransaction();
				try {

					String from = "n17dccn157@student.ptithcm.edu.vn";
					String to = user.getEmail();
					String body = "<html><body>\r\n"
							+ "    <div class=\"container\" style=\"width: 700px; margin: auto; text-align: center;\">\r\n"
							+ "        <h2 class=\"title\" style=\"text-align: center; font-size: 30px; color: #666666; font-weight: 400;\">Ngọc Tuấn Bakery</h2>\r\n"
							+ "        <h3 class=\"sayHello\" style=\"text-align: center; font-size: 25px; color: #666666; font-weight: 400;\">\r\n"
							+ "            Chào mừng bạn đến với Ngọc Tuấn Bakery!</h3>\r\n"
							+ "            <p style=\"text-align: center; font-size: 18px; color: #666666; font-weight: 300;\">Chúc mừng bạn đã kích hoạt tài khoản khách hàng thành công. Lần mua hàng tiếp theo, hãy đăng nhập để việc thanh toán thuận tiện hơn.</p>\r\n"
							+ "        <a href=\"http://localhost:8080/BakeryShop/\" style=\"display: block; text-align: center; margin: 0 auto; text-decoration: none; padding: 15px; background-color: #1666A2; color: white; max-width: 200px; border-radius: 5px;\">\r\n"
							+ "            Đến cửa hàng của chúng tôi</a>\r\n" + "    </div>\r\n" + "</body>\r\n"
							+ "\r\n" + "</html>";
					String subject = "Chào bạn  " + user.getFullname();
					MimeMessage mail = mailer.createMimeMessage();
					MimeMessageHelper helper = new MimeMessageHelper(mail);
					helper.setFrom(from, from);
					helper.setTo(to);
					helper.setReplyTo(from, from);
					helper.setSubject(subject);
					helper.setText(body, true);
					mailer.send(mail);
					t2.commit();
				} catch (Exception e) {
					t2.rollback();
				} finally {
					session2.close();
				}
			}
		} catch (Exception e) {
			t.rollback();
			model.addAttribute("message", "Tạo tài khoản thất bại");
		} finally {
			session.close();
		}

		return "user/register";
	}

	@RequestMapping(value = "forgotpassword", method = RequestMethod.GET)
	public String forgotpassword(ModelMap model) {
		model.addAttribute("user", new Account());
		return "user/forgotPassword";
	}

	@Autowired
	JavaMailSender mailer;

	// send mail get password
	@RequestMapping(value = "forgotpassword", method = RequestMethod.POST)
	public String forgotpassword(ModelMap model, @ModelAttribute("user") Account user, BindingResult errors) {
		String regex = "^[a-zA-Z0-9_!#$%&'*+/=?`{|}~^.-]+@[a-zA-Z0-9.-]+$";
		Pattern pattern = Pattern.compile(regex);
		if (user.getEmail().trim().length() == 0) {
			errors.rejectValue("email", "user", "Email không được bỏ trống.");
			return "user/forgotPassword";
		} else {
			Matcher matcher = pattern.matcher(user.getEmail().trim());
			if (!matcher.matches()) {
				errors.rejectValue("email", "user", "Email không đúng định dạng");
				return "user/forgotPassword";
			}
		}

		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		Account acc = (Account) session.get(Account.class, user.getEmail());
		Random rand = new Random();
		int rand_int1 = rand.nextInt(100000);

		String newPassword = Integer.toString(rand_int1);
		try {
			acc.setPassword(newPassword);
			String from = "n17dccn157@student.ptithcm.edu.vn";
			String to = acc.getEmail();
			String body = "Đây là mật khẩu mới của bạn: " + newPassword;
			String subject = "Quên mật khẩu";
			MimeMessage mail = mailer.createMimeMessage();
			MimeMessageHelper helper = new MimeMessageHelper(mail);
			helper.setFrom(from, from);
			helper.setTo(to);
			helper.setReplyTo(from, from);
			helper.setSubject(subject);
			helper.setText(body, true);
			mailer.send(mail);
			session.update(acc);
			t.commit();
			model.addAttribute("message", "Mật khẩu mới sẽ được gửi về email của bạn. !");

		} catch (Exception e) {
			model.addAttribute("message", "Không tìm thấy tài khoản nào với email này.!");
			t.rollback();
		} finally {
			session.close();
		}
		return "user/forgotPassword";
	}

}
