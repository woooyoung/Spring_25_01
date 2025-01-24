package com.example.demo.repository;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Component;

import com.example.demo.vo.Article;

@Component
public class ArticleRepository {

	public List<Article> articles;
	public int lastArticleId;

	public ArticleRepository() {

		lastArticleId = 0;
		articles = new ArrayList<>();
	}

	public Article writeArticle(String title, String body) {
		int id = lastArticleId + 1;
		Article article = new Article(id, title, body);
		articles.add(article);
		lastArticleId++;
		return article;
	}

	public Article getArticleById(int id) {
		for (Article article : articles) {
			if (article.getId() == id) {
				return article;
			}
		}
		return null;
	}

	public List<Article> getArticles() {
		return articles;
	}

	public void deleteArticle(int id) {
		Article article = getArticleById(id);
		articles.remove(article);
	}

}
