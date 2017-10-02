package com.springmvc.datatables.input;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class DataTablesInput implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 8978406261640855030L;

	private int draw;
    private int start;
    private int length;

    private ColumnSearch search;

    private List<Order> order;

    private List<Column> columns;

    public DataTablesInput() {
    	this.search = new ColumnSearch();
    	this.order = new ArrayList<Order>();
		this.columns = new ArrayList<Column>();
	}
    
    public int getDraw() {
		return draw;
	}

	public void setDraw(int draw) {
		this.draw = draw;
	}

	public int getStart() {
		return start;
	}

	public void setStart(int start) {
		this.start = start;
	}

	public int getLength() {
		return length;
	}

	public void setLength(int length) {
		this.length = length;
	}

	public ColumnSearch getSearch() {
		return search;
	}

	public void setSearch(ColumnSearch search) {
		this.search = search;
	}

	public List<Order> getOrder() {
		return order;
	}

	public void setOrder(List<Order> order) {
		this.order = order;
	}

	public List<Column> getColumns() {
		return columns;
	}

	public void setColumns(List<Column> columns) {
		this.columns = columns;
	}

	public enum SearchCriterias {
        value,
        regex
    }


}