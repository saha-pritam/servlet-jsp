package servletjsp.tags;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

public class CustomTagOne extends TagSupport {

	@Override
	public int doAfterBody() throws JspException {
		return EVAL_BODY_AGAIN;
	}

	@Override
	public int doEndTag() throws JspException {
		JspWriter out = pageContext.getOut();
		try {
			out.print("<h4>I am doEndTag() method </h4>");
		} catch (IOException e) {
			e.printStackTrace();
		}
		return SKIP_PAGE;
	}

	@Override
	public int doStartTag() throws JspException {
		JspWriter out = pageContext.getOut();
		try {
			out.print("<h4>I am doStartTag() method </h4>");
		} catch (IOException e) {
			e.printStackTrace();
		}
		return EVAL_BODY_INCLUDE;
	}

}
