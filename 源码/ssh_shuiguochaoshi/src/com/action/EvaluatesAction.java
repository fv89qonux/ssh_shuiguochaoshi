package com.action;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.directwebremoting.WebContext;
import org.directwebremoting.WebContextFactory;

import com.dao.EvaluatesDao;
import com.model.Evaluates;
import com.model.TUser;
import com.opensymphony.xwork2.ActionSupport;

public class EvaluatesAction extends ActionSupport{
	
	EvaluatesDao evaluatesDao;
	
	private int goodsId;
	private String cons;
	private String conswl;
	private String message;
	private String path;
	
	public String add()
	{
		Evaluates eva=new Evaluates();
		eva.setConts(cons);
		eva.setContswl(conswl);
		eva.setGoodsid(goodsId);
		Map session= ServletActionContext.getContext().getSession();
		TUser user=(TUser)session.get("user");
		eva.setEname(user.getUserName());
		SimpleDateFormat myFmt2=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//等价于
		eva.setEtime(myFmt2.format(new Date()));
		evaluatesDao.save(eva);
		this.setMessage("操作成功");
		this.setPath("myOrder.action");
		return "succeed";
		
	}
	

	public EvaluatesDao getEvaluatesDao() {
		return evaluatesDao;
	}

	public void setEvaluatesDao(EvaluatesDao evaluatesDao) {
		this.evaluatesDao = evaluatesDao;
	}

	public int getGoodsId() {
		return goodsId;
	}

	public void setGoodsId(int goodsId) {
		this.goodsId = goodsId;
	}

	public String getCons() {
		return cons;
	}

	public void setCons(String cons) {
		this.cons = cons;
	}


	public String getMessage() {
		return message;
	}


	public void setMessage(String message) {
		this.message = message;
	}


	public String getPath() {
		return path;
	}


	public void setPath(String path) {
		this.path = path;
	}


	public String getConswl() {
		return conswl;
	}


	public void setConswl(String conswl) {
		this.conswl = conswl;
	}
	
	
	
	
	

}
