package servletjsp.tags;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;

public class CustomTagThree extends TagSupport {
	private int start;
	private int end;
	private int step;
	private String var;
	
	
	
	public int getStart() {
		return start;
	}

	public void setStart(int start) {
		this.start = start;
	}

	public int getEnd() {
		return end;
	}

	public void setEnd(int end) {
		this.end = end;
	}

	public int getStep() {
		return step;
	}

	public void setStep(int step) {
		this.step = step;
	}

	public String getVar() {
		return var;
	}

	public void setVar(String var) {
		this.var = var;
	}

	@Override
	public int doStartTag() throws JspException {
		pageContext.setAttribute(var, start);
		return EVAL_BODY_INCLUDE;
	}

	@Override
	public int doAfterBody() throws JspException {
		start=start+step;
		if(start<=end) {
			pageContext.setAttribute(var, start);
			return EVAL_BODY_AGAIN;
		}
		else
			return SKIP_BODY;
	}
}
