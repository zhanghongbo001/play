package com.bdt.framework.mapper;

import com.bdt.framework.entity.WebTaskItem;
import java.util.List;

public interface WebTaskItemMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table web_task_item
     *
     * @mbggenerated Fri Sep 30 13:56:21 CST 2016
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table web_task_item
     *
     * @mbggenerated Fri Sep 30 13:56:21 CST 2016
     */
    int insert(WebTaskItem record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table web_task_item
     *
     * @mbggenerated Fri Sep 30 13:56:21 CST 2016
     */
    WebTaskItem selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table web_task_item
     *
     * @mbggenerated Fri Sep 30 13:56:21 CST 2016
     */
    List<WebTaskItem> selectAll();

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table web_task_item
     *
     * @mbggenerated Fri Sep 30 13:56:21 CST 2016
     */
    int updateByPrimaryKey(WebTaskItem record);
}