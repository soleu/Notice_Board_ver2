package Board;

public class BoardDTO {
	private int no;// ��ȣ
	private String writer;// �ۼ���
	private String title;// ����
	private String date;// �ۼ���
	private int count;// ��ȸ��
	private String postData;//�Խñ� ����
	private String pw;//��й�ȣ
	private String email;//�̸���
	//�� �Խñ� ���� ����
	public void addPost(int no,String writer,String title,String date,String postData,String pw,String email) {
		this.no=no;
		this.writer=writer;
		this.title=title;
		this.date=date;
		this.postData=postData;
		this.pw=pw;
		this.email=email;
		this.count=0;
	}
	
	
	//���� ����
	public void addPost(int no,String writer,String title,String date,String postData) {
		this.no=no;
		this.writer=writer;
		this.title=title;
		this.count=0;
		this.date=date;
		this.postData=postData;
		this.pw="1111";
		this.email="dummy@naver.com";
	}
	
	public int getNo() {
		return no;
	}

	public String getWriter() {
		return writer;
	}

	public String getTitle() {
		return title;
	}

	public String getDate() {
		return date;
	}
	
	public String getPostData() {
		return postData;
	}
	
	public String getPw() {
		return pw;
	}
	
	public String getEmail() {
		return email;
	}

	public int getCount() {
		return count;
	}
	
	public void setInfo(String writer,String title,String email,String postData) {
		this.writer=writer;
		this.title=title;
		this.email=email;
		this.postData=postData;
	}
	
	
}