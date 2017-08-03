package seience.havelook.pojo;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public class ArticleExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public ArticleExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        protected void addCriterionForJDBCDate(String condition, Date value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            addCriterion(condition, new java.sql.Date(value.getTime()), property);
        }

        protected void addCriterionForJDBCDate(String condition, List<Date> values, String property) {
            if (values == null || values.size() == 0) {
                throw new RuntimeException("Value list for " + property + " cannot be null or empty");
            }
            List<java.sql.Date> dateList = new ArrayList<java.sql.Date>();
            Iterator<Date> iter = values.iterator();
            while (iter.hasNext()) {
                dateList.add(new java.sql.Date(iter.next().getTime()));
            }
            addCriterion(condition, dateList, property);
        }

        protected void addCriterionForJDBCDate(String condition, Date value1, Date value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            addCriterion(condition, new java.sql.Date(value1.getTime()), new java.sql.Date(value2.getTime()), property);
        }

        public Criteria andArticleIdIsNull() {
            addCriterion("article_id is null");
            return (Criteria) this;
        }

        public Criteria andArticleIdIsNotNull() {
            addCriterion("article_id is not null");
            return (Criteria) this;
        }

        public Criteria andArticleIdEqualTo(Integer value) {
            addCriterion("article_id =", value, "articleId");
            return (Criteria) this;
        }

        public Criteria andArticleIdNotEqualTo(Integer value) {
            addCriterion("article_id <>", value, "articleId");
            return (Criteria) this;
        }

        public Criteria andArticleIdGreaterThan(Integer value) {
            addCriterion("article_id >", value, "articleId");
            return (Criteria) this;
        }

        public Criteria andArticleIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("article_id >=", value, "articleId");
            return (Criteria) this;
        }

        public Criteria andArticleIdLessThan(Integer value) {
            addCriterion("article_id <", value, "articleId");
            return (Criteria) this;
        }

        public Criteria andArticleIdLessThanOrEqualTo(Integer value) {
            addCriterion("article_id <=", value, "articleId");
            return (Criteria) this;
        }

        public Criteria andArticleIdIn(List<Integer> values) {
            addCriterion("article_id in", values, "articleId");
            return (Criteria) this;
        }

        public Criteria andArticleIdNotIn(List<Integer> values) {
            addCriterion("article_id not in", values, "articleId");
            return (Criteria) this;
        }

        public Criteria andArticleIdBetween(Integer value1, Integer value2) {
            addCriterion("article_id between", value1, value2, "articleId");
            return (Criteria) this;
        }

        public Criteria andArticleIdNotBetween(Integer value1, Integer value2) {
            addCriterion("article_id not between", value1, value2, "articleId");
            return (Criteria) this;
        }

        public Criteria andArticleNameIsNull() {
            addCriterion("article_name is null");
            return (Criteria) this;
        }

        public Criteria andArticleNameIsNotNull() {
            addCriterion("article_name is not null");
            return (Criteria) this;
        }

        public Criteria andArticleNameEqualTo(String value) {
            addCriterion("article_name =", value, "articleName");
            return (Criteria) this;
        }

        public Criteria andArticleNameNotEqualTo(String value) {
            addCriterion("article_name <>", value, "articleName");
            return (Criteria) this;
        }

        public Criteria andArticleNameGreaterThan(String value) {
            addCriterion("article_name >", value, "articleName");
            return (Criteria) this;
        }

        public Criteria andArticleNameGreaterThanOrEqualTo(String value) {
            addCriterion("article_name >=", value, "articleName");
            return (Criteria) this;
        }

        public Criteria andArticleNameLessThan(String value) {
            addCriterion("article_name <", value, "articleName");
            return (Criteria) this;
        }

        public Criteria andArticleNameLessThanOrEqualTo(String value) {
            addCriterion("article_name <=", value, "articleName");
            return (Criteria) this;
        }

        public Criteria andArticleNameLike(String value) {
            addCriterion("article_name like", value, "articleName");
            return (Criteria) this;
        }

        public Criteria andArticleNameNotLike(String value) {
            addCriterion("article_name not like", value, "articleName");
            return (Criteria) this;
        }

        public Criteria andArticleNameIn(List<String> values) {
            addCriterion("article_name in", values, "articleName");
            return (Criteria) this;
        }

        public Criteria andArticleNameNotIn(List<String> values) {
            addCriterion("article_name not in", values, "articleName");
            return (Criteria) this;
        }

        public Criteria andArticleNameBetween(String value1, String value2) {
            addCriterion("article_name between", value1, value2, "articleName");
            return (Criteria) this;
        }

        public Criteria andArticleNameNotBetween(String value1, String value2) {
            addCriterion("article_name not between", value1, value2, "articleName");
            return (Criteria) this;
        }

        public Criteria andArticleAuthorIsNull() {
            addCriterion("article_author is null");
            return (Criteria) this;
        }

        public Criteria andArticleAuthorIsNotNull() {
            addCriterion("article_author is not null");
            return (Criteria) this;
        }

        public Criteria andArticleAuthorEqualTo(String value) {
            addCriterion("article_author =", value, "articleAuthor");
            return (Criteria) this;
        }

        public Criteria andArticleAuthorNotEqualTo(String value) {
            addCriterion("article_author <>", value, "articleAuthor");
            return (Criteria) this;
        }

        public Criteria andArticleAuthorGreaterThan(String value) {
            addCriterion("article_author >", value, "articleAuthor");
            return (Criteria) this;
        }

        public Criteria andArticleAuthorGreaterThanOrEqualTo(String value) {
            addCriterion("article_author >=", value, "articleAuthor");
            return (Criteria) this;
        }

        public Criteria andArticleAuthorLessThan(String value) {
            addCriterion("article_author <", value, "articleAuthor");
            return (Criteria) this;
        }

        public Criteria andArticleAuthorLessThanOrEqualTo(String value) {
            addCriterion("article_author <=", value, "articleAuthor");
            return (Criteria) this;
        }

        public Criteria andArticleAuthorLike(String value) {
            addCriterion("article_author like", value, "articleAuthor");
            return (Criteria) this;
        }

        public Criteria andArticleAuthorNotLike(String value) {
            addCriterion("article_author not like", value, "articleAuthor");
            return (Criteria) this;
        }

        public Criteria andArticleAuthorIn(List<String> values) {
            addCriterion("article_author in", values, "articleAuthor");
            return (Criteria) this;
        }

        public Criteria andArticleAuthorNotIn(List<String> values) {
            addCriterion("article_author not in", values, "articleAuthor");
            return (Criteria) this;
        }

        public Criteria andArticleAuthorBetween(String value1, String value2) {
            addCriterion("article_author between", value1, value2, "articleAuthor");
            return (Criteria) this;
        }

        public Criteria andArticleAuthorNotBetween(String value1, String value2) {
            addCriterion("article_author not between", value1, value2, "articleAuthor");
            return (Criteria) this;
        }

        public Criteria andPublishTimeIsNull() {
            addCriterion("publish_time is null");
            return (Criteria) this;
        }

        public Criteria andPublishTimeIsNotNull() {
            addCriterion("publish_time is not null");
            return (Criteria) this;
        }

        public Criteria andPublishTimeEqualTo(Date value) {
            addCriterionForJDBCDate("publish_time =", value, "publishTime");
            return (Criteria) this;
        }

        public Criteria andPublishTimeNotEqualTo(Date value) {
            addCriterionForJDBCDate("publish_time <>", value, "publishTime");
            return (Criteria) this;
        }

        public Criteria andPublishTimeGreaterThan(Date value) {
            addCriterionForJDBCDate("publish_time >", value, "publishTime");
            return (Criteria) this;
        }

        public Criteria andPublishTimeGreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("publish_time >=", value, "publishTime");
            return (Criteria) this;
        }

        public Criteria andPublishTimeLessThan(Date value) {
            addCriterionForJDBCDate("publish_time <", value, "publishTime");
            return (Criteria) this;
        }

        public Criteria andPublishTimeLessThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("publish_time <=", value, "publishTime");
            return (Criteria) this;
        }

        public Criteria andPublishTimeIn(List<Date> values) {
            addCriterionForJDBCDate("publish_time in", values, "publishTime");
            return (Criteria) this;
        }

        public Criteria andPublishTimeNotIn(List<Date> values) {
            addCriterionForJDBCDate("publish_time not in", values, "publishTime");
            return (Criteria) this;
        }

        public Criteria andPublishTimeBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("publish_time between", value1, value2, "publishTime");
            return (Criteria) this;
        }

        public Criteria andPublishTimeNotBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("publish_time not between", value1, value2, "publishTime");
            return (Criteria) this;
        }

        public Criteria andModifyTimeIsNull() {
            addCriterion("modify_time is null");
            return (Criteria) this;
        }

        public Criteria andModifyTimeIsNotNull() {
            addCriterion("modify_time is not null");
            return (Criteria) this;
        }

        public Criteria andModifyTimeEqualTo(Integer value) {
            addCriterion("modify_time =", value, "modifyTime");
            return (Criteria) this;
        }

        public Criteria andModifyTimeNotEqualTo(Integer value) {
            addCriterion("modify_time <>", value, "modifyTime");
            return (Criteria) this;
        }

        public Criteria andModifyTimeGreaterThan(Integer value) {
            addCriterion("modify_time >", value, "modifyTime");
            return (Criteria) this;
        }

        public Criteria andModifyTimeGreaterThanOrEqualTo(Integer value) {
            addCriterion("modify_time >=", value, "modifyTime");
            return (Criteria) this;
        }

        public Criteria andModifyTimeLessThan(Integer value) {
            addCriterion("modify_time <", value, "modifyTime");
            return (Criteria) this;
        }

        public Criteria andModifyTimeLessThanOrEqualTo(Integer value) {
            addCriterion("modify_time <=", value, "modifyTime");
            return (Criteria) this;
        }

        public Criteria andModifyTimeIn(List<Integer> values) {
            addCriterion("modify_time in", values, "modifyTime");
            return (Criteria) this;
        }

        public Criteria andModifyTimeNotIn(List<Integer> values) {
            addCriterion("modify_time not in", values, "modifyTime");
            return (Criteria) this;
        }

        public Criteria andModifyTimeBetween(Integer value1, Integer value2) {
            addCriterion("modify_time between", value1, value2, "modifyTime");
            return (Criteria) this;
        }

        public Criteria andModifyTimeNotBetween(Integer value1, Integer value2) {
            addCriterion("modify_time not between", value1, value2, "modifyTime");
            return (Criteria) this;
        }

        public Criteria andCategoryIdIsNull() {
            addCriterion("category_id is null");
            return (Criteria) this;
        }

        public Criteria andCategoryIdIsNotNull() {
            addCriterion("category_id is not null");
            return (Criteria) this;
        }

        public Criteria andCategoryIdEqualTo(Integer value) {
            addCriterion("category_id =", value, "categoryId");
            return (Criteria) this;
        }

        public Criteria andCategoryIdNotEqualTo(Integer value) {
            addCriterion("category_id <>", value, "categoryId");
            return (Criteria) this;
        }

        public Criteria andCategoryIdGreaterThan(Integer value) {
            addCriterion("category_id >", value, "categoryId");
            return (Criteria) this;
        }

        public Criteria andCategoryIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("category_id >=", value, "categoryId");
            return (Criteria) this;
        }

        public Criteria andCategoryIdLessThan(Integer value) {
            addCriterion("category_id <", value, "categoryId");
            return (Criteria) this;
        }

        public Criteria andCategoryIdLessThanOrEqualTo(Integer value) {
            addCriterion("category_id <=", value, "categoryId");
            return (Criteria) this;
        }

        public Criteria andCategoryIdIn(List<Integer> values) {
            addCriterion("category_id in", values, "categoryId");
            return (Criteria) this;
        }

        public Criteria andCategoryIdNotIn(List<Integer> values) {
            addCriterion("category_id not in", values, "categoryId");
            return (Criteria) this;
        }

        public Criteria andCategoryIdBetween(Integer value1, Integer value2) {
            addCriterion("category_id between", value1, value2, "categoryId");
            return (Criteria) this;
        }

        public Criteria andCategoryIdNotBetween(Integer value1, Integer value2) {
            addCriterion("category_id not between", value1, value2, "categoryId");
            return (Criteria) this;
        }

        public Criteria andArticleKeywordIsNull() {
            addCriterion("article_keyword is null");
            return (Criteria) this;
        }

        public Criteria andArticleKeywordIsNotNull() {
            addCriterion("article_keyword is not null");
            return (Criteria) this;
        }

        public Criteria andArticleKeywordEqualTo(String value) {
            addCriterion("article_keyword =", value, "articleKeyword");
            return (Criteria) this;
        }

        public Criteria andArticleKeywordNotEqualTo(String value) {
            addCriterion("article_keyword <>", value, "articleKeyword");
            return (Criteria) this;
        }

        public Criteria andArticleKeywordGreaterThan(String value) {
            addCriterion("article_keyword >", value, "articleKeyword");
            return (Criteria) this;
        }

        public Criteria andArticleKeywordGreaterThanOrEqualTo(String value) {
            addCriterion("article_keyword >=", value, "articleKeyword");
            return (Criteria) this;
        }

        public Criteria andArticleKeywordLessThan(String value) {
            addCriterion("article_keyword <", value, "articleKeyword");
            return (Criteria) this;
        }

        public Criteria andArticleKeywordLessThanOrEqualTo(String value) {
            addCriterion("article_keyword <=", value, "articleKeyword");
            return (Criteria) this;
        }

        public Criteria andArticleKeywordLike(String value) {
            addCriterion("article_keyword like", value, "articleKeyword");
            return (Criteria) this;
        }

        public Criteria andArticleKeywordNotLike(String value) {
            addCriterion("article_keyword not like", value, "articleKeyword");
            return (Criteria) this;
        }

        public Criteria andArticleKeywordIn(List<String> values) {
            addCriterion("article_keyword in", values, "articleKeyword");
            return (Criteria) this;
        }

        public Criteria andArticleKeywordNotIn(List<String> values) {
            addCriterion("article_keyword not in", values, "articleKeyword");
            return (Criteria) this;
        }

        public Criteria andArticleKeywordBetween(String value1, String value2) {
            addCriterion("article_keyword between", value1, value2, "articleKeyword");
            return (Criteria) this;
        }

        public Criteria andArticleKeywordNotBetween(String value1, String value2) {
            addCriterion("article_keyword not between", value1, value2, "articleKeyword");
            return (Criteria) this;
        }

        public Criteria andArticleImgIsNull() {
            addCriterion("article_img is null");
            return (Criteria) this;
        }

        public Criteria andArticleImgIsNotNull() {
            addCriterion("article_img is not null");
            return (Criteria) this;
        }

        public Criteria andArticleImgEqualTo(String value) {
            addCriterion("article_img =", value, "articleImg");
            return (Criteria) this;
        }

        public Criteria andArticleImgNotEqualTo(String value) {
            addCriterion("article_img <>", value, "articleImg");
            return (Criteria) this;
        }

        public Criteria andArticleImgGreaterThan(String value) {
            addCriterion("article_img >", value, "articleImg");
            return (Criteria) this;
        }

        public Criteria andArticleImgGreaterThanOrEqualTo(String value) {
            addCriterion("article_img >=", value, "articleImg");
            return (Criteria) this;
        }

        public Criteria andArticleImgLessThan(String value) {
            addCriterion("article_img <", value, "articleImg");
            return (Criteria) this;
        }

        public Criteria andArticleImgLessThanOrEqualTo(String value) {
            addCriterion("article_img <=", value, "articleImg");
            return (Criteria) this;
        }

        public Criteria andArticleImgLike(String value) {
            addCriterion("article_img like", value, "articleImg");
            return (Criteria) this;
        }

        public Criteria andArticleImgNotLike(String value) {
            addCriterion("article_img not like", value, "articleImg");
            return (Criteria) this;
        }

        public Criteria andArticleImgIn(List<String> values) {
            addCriterion("article_img in", values, "articleImg");
            return (Criteria) this;
        }

        public Criteria andArticleImgNotIn(List<String> values) {
            addCriterion("article_img not in", values, "articleImg");
            return (Criteria) this;
        }

        public Criteria andArticleImgBetween(String value1, String value2) {
            addCriterion("article_img between", value1, value2, "articleImg");
            return (Criteria) this;
        }

        public Criteria andArticleImgNotBetween(String value1, String value2) {
            addCriterion("article_img not between", value1, value2, "articleImg");
            return (Criteria) this;
        }

        public Criteria andArticleThumbIsNull() {
            addCriterion("article_thumb is null");
            return (Criteria) this;
        }

        public Criteria andArticleThumbIsNotNull() {
            addCriterion("article_thumb is not null");
            return (Criteria) this;
        }

        public Criteria andArticleThumbEqualTo(String value) {
            addCriterion("article_thumb =", value, "articleThumb");
            return (Criteria) this;
        }

        public Criteria andArticleThumbNotEqualTo(String value) {
            addCriterion("article_thumb <>", value, "articleThumb");
            return (Criteria) this;
        }

        public Criteria andArticleThumbGreaterThan(String value) {
            addCriterion("article_thumb >", value, "articleThumb");
            return (Criteria) this;
        }

        public Criteria andArticleThumbGreaterThanOrEqualTo(String value) {
            addCriterion("article_thumb >=", value, "articleThumb");
            return (Criteria) this;
        }

        public Criteria andArticleThumbLessThan(String value) {
            addCriterion("article_thumb <", value, "articleThumb");
            return (Criteria) this;
        }

        public Criteria andArticleThumbLessThanOrEqualTo(String value) {
            addCriterion("article_thumb <=", value, "articleThumb");
            return (Criteria) this;
        }

        public Criteria andArticleThumbLike(String value) {
            addCriterion("article_thumb like", value, "articleThumb");
            return (Criteria) this;
        }

        public Criteria andArticleThumbNotLike(String value) {
            addCriterion("article_thumb not like", value, "articleThumb");
            return (Criteria) this;
        }

        public Criteria andArticleThumbIn(List<String> values) {
            addCriterion("article_thumb in", values, "articleThumb");
            return (Criteria) this;
        }

        public Criteria andArticleThumbNotIn(List<String> values) {
            addCriterion("article_thumb not in", values, "articleThumb");
            return (Criteria) this;
        }

        public Criteria andArticleThumbBetween(String value1, String value2) {
            addCriterion("article_thumb between", value1, value2, "articleThumb");
            return (Criteria) this;
        }

        public Criteria andArticleThumbNotBetween(String value1, String value2) {
            addCriterion("article_thumb not between", value1, value2, "articleThumb");
            return (Criteria) this;
        }

        public Criteria andIsTopIsNull() {
            addCriterion("is_top is null");
            return (Criteria) this;
        }

        public Criteria andIsTopIsNotNull() {
            addCriterion("is_top is not null");
            return (Criteria) this;
        }

        public Criteria andIsTopEqualTo(Integer value) {
            addCriterion("is_top =", value, "isTop");
            return (Criteria) this;
        }

        public Criteria andIsTopNotEqualTo(Integer value) {
            addCriterion("is_top <>", value, "isTop");
            return (Criteria) this;
        }

        public Criteria andIsTopGreaterThan(Integer value) {
            addCriterion("is_top >", value, "isTop");
            return (Criteria) this;
        }

        public Criteria andIsTopGreaterThanOrEqualTo(Integer value) {
            addCriterion("is_top >=", value, "isTop");
            return (Criteria) this;
        }

        public Criteria andIsTopLessThan(Integer value) {
            addCriterion("is_top <", value, "isTop");
            return (Criteria) this;
        }

        public Criteria andIsTopLessThanOrEqualTo(Integer value) {
            addCriterion("is_top <=", value, "isTop");
            return (Criteria) this;
        }

        public Criteria andIsTopIn(List<Integer> values) {
            addCriterion("is_top in", values, "isTop");
            return (Criteria) this;
        }

        public Criteria andIsTopNotIn(List<Integer> values) {
            addCriterion("is_top not in", values, "isTop");
            return (Criteria) this;
        }

        public Criteria andIsTopBetween(Integer value1, Integer value2) {
            addCriterion("is_top between", value1, value2, "isTop");
            return (Criteria) this;
        }

        public Criteria andIsTopNotBetween(Integer value1, Integer value2) {
            addCriterion("is_top not between", value1, value2, "isTop");
            return (Criteria) this;
        }

        public Criteria andArticleViewIsNull() {
            addCriterion("article_view is null");
            return (Criteria) this;
        }

        public Criteria andArticleViewIsNotNull() {
            addCriterion("article_view is not null");
            return (Criteria) this;
        }

        public Criteria andArticleViewEqualTo(Integer value) {
            addCriterion("article_view =", value, "articleView");
            return (Criteria) this;
        }

        public Criteria andArticleViewNotEqualTo(Integer value) {
            addCriterion("article_view <>", value, "articleView");
            return (Criteria) this;
        }

        public Criteria andArticleViewGreaterThan(Integer value) {
            addCriterion("article_view >", value, "articleView");
            return (Criteria) this;
        }

        public Criteria andArticleViewGreaterThanOrEqualTo(Integer value) {
            addCriterion("article_view >=", value, "articleView");
            return (Criteria) this;
        }

        public Criteria andArticleViewLessThan(Integer value) {
            addCriterion("article_view <", value, "articleView");
            return (Criteria) this;
        }

        public Criteria andArticleViewLessThanOrEqualTo(Integer value) {
            addCriterion("article_view <=", value, "articleView");
            return (Criteria) this;
        }

        public Criteria andArticleViewIn(List<Integer> values) {
            addCriterion("article_view in", values, "articleView");
            return (Criteria) this;
        }

        public Criteria andArticleViewNotIn(List<Integer> values) {
            addCriterion("article_view not in", values, "articleView");
            return (Criteria) this;
        }

        public Criteria andArticleViewBetween(Integer value1, Integer value2) {
            addCriterion("article_view between", value1, value2, "articleView");
            return (Criteria) this;
        }

        public Criteria andArticleViewNotBetween(Integer value1, Integer value2) {
            addCriterion("article_view not between", value1, value2, "articleView");
            return (Criteria) this;
        }

        public Criteria andArticleLoveIsNull() {
            addCriterion("article_love is null");
            return (Criteria) this;
        }

        public Criteria andArticleLoveIsNotNull() {
            addCriterion("article_love is not null");
            return (Criteria) this;
        }

        public Criteria andArticleLoveEqualTo(Integer value) {
            addCriterion("article_love =", value, "articleLove");
            return (Criteria) this;
        }

        public Criteria andArticleLoveNotEqualTo(Integer value) {
            addCriterion("article_love <>", value, "articleLove");
            return (Criteria) this;
        }

        public Criteria andArticleLoveGreaterThan(Integer value) {
            addCriterion("article_love >", value, "articleLove");
            return (Criteria) this;
        }

        public Criteria andArticleLoveGreaterThanOrEqualTo(Integer value) {
            addCriterion("article_love >=", value, "articleLove");
            return (Criteria) this;
        }

        public Criteria andArticleLoveLessThan(Integer value) {
            addCriterion("article_love <", value, "articleLove");
            return (Criteria) this;
        }

        public Criteria andArticleLoveLessThanOrEqualTo(Integer value) {
            addCriterion("article_love <=", value, "articleLove");
            return (Criteria) this;
        }

        public Criteria andArticleLoveIn(List<Integer> values) {
            addCriterion("article_love in", values, "articleLove");
            return (Criteria) this;
        }

        public Criteria andArticleLoveNotIn(List<Integer> values) {
            addCriterion("article_love not in", values, "articleLove");
            return (Criteria) this;
        }

        public Criteria andArticleLoveBetween(Integer value1, Integer value2) {
            addCriterion("article_love between", value1, value2, "articleLove");
            return (Criteria) this;
        }

        public Criteria andArticleLoveNotBetween(Integer value1, Integer value2) {
            addCriterion("article_love not between", value1, value2, "articleLove");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}