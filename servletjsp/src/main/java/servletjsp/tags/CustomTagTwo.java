package servletjsp.tags;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;

public class CustomTagTwo extends TagSupport {
	private int x;
	private int y;
	
	public int getX() {
		return x;
	}

	public void setX(int x) {
		this.x = x;
	}

	public int getY() {
		return y;
	}

	public void setY(int y) {
		this.y = y;
	}

	@Override
	public int doStartTag() throws JspException {
		System.out.println("Sum is :- "+(x+y));
		return EVAL_BODY_INCLUDE;
	}

}
