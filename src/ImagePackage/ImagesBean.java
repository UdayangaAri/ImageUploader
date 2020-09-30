package ImagePackage;

import java.sql.Blob;

import javax.servlet.http.Part;

public class ImagesBean {

	protected int ImageID;
	protected Part image;
	protected String Category;
	protected String ImageDate;
	protected Blob Images;
	protected String exdate;

	public int getImageID() {
		return ImageID;
	}

	public void setImageID(int imageID) {
		ImageID = imageID;
	}

	public Part getImage() {
		return image;
	}

	public void setImage(Part image) {
		this.image = image;
	}

	public String getCategory() {
		return Category;
	}

	public void setCategory(String category) {
		Category = category;
	}

	public String getImageDate() {
		return ImageDate;
	}

	public void setImageDate(String imageDate) {
		ImageDate = imageDate;
	}

	public Blob getImages() {
		return Images;
	}

	public void setImages(Blob images) {
		Images = images;
	}

	public String getExdate() {
		return exdate;
	}

	public void setExdate(String exdate) {
		this.exdate = exdate;
	}

}
