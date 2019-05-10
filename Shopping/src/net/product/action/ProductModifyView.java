package net.product.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.action.Action;
import net.action.ActionForward;
import net.product.db.ProductBean;
import net.product.db.ProductDAO;

public class ProductModifyView implements Action{
	public ActionForward execute(HttpServletRequest request,HttpServletResponse response) throws Exception{
		ProductDAO productdao = new ProductDAO();
		HttpSession session = request.getSession();
		
		session.setAttribute("image", request.getParameter("image"));
		ActionForward forward = new ActionForward();
		forward.setRedirect(true);
		forward.setPath("ProductModify.po");		
		productdao.conClose();
		return forward;
		
	}
}
