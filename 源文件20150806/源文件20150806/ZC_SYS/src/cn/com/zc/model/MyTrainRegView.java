package cn.com.zc.model;


public class MyTrainRegView extends BaseModel {
	private String title;
	private String doDate;
	private String reg_t;
	private int score;
	
	public MyTrainRegView(){
		
	}
	
	public MyTrainRegView(String title,String do_date,String reg_t,int score){
		this.title = title;
		this.doDate = do_date;
		this.reg_t = reg_t;
		this.score = score;
	}
	
	public int getScore() {
		return score;
	}

	public void setScore(int score) {
		this.score = score;
	}

	
	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	
	public String getDoDate() {
		return doDate;
	}

	public void setDoDate(String doDate) {
		this.doDate = doDate;
	}

	
	public String getReg_t() {
		return reg_t;
	}

	public void setReg_t(String reg_t) {
		this.reg_t = reg_t;
	}

}
