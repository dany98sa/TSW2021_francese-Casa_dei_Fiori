package model;

public class InclusioneTag {
    private int item;
    private int tag;
 
    public InclusioneTag() {
    	super();
    }

	public InclusioneTag(int item, int tag) {
		super();
		this.item = item;
		this.tag = tag;
	}

	public int getItem() {
		return item;
	}

	public void setItem(int item) {
		this.item = item;
	}

	public int getTag() {
		return tag;
	}

	public void setTag(int tag) {
		this.tag = tag;
	}
    
}