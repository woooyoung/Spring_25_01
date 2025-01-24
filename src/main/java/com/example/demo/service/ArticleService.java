package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.repository.ArticleRepository;
import com.example.demo.util.Ut;
import com.example.demo.vo.Article;
import com.example.demo.vo.ResultData;

@Service
public class ArticleService {

	@Autowired
	ArticleRepository articleRepository;

	public ArticleService(ArticleRepository articleRepository) {
		this.articleRepository = articleRepository;
	}

	public ResultData writeArticle(String title, String body) {
		articleRepository.writeArticle(title, body);

		int id = articleRepository.getLastInsertId();

		return ResultData.from("S-1", Ut.f("%d번 게시글 등록", id), id);
	}

	public Article getArticleById(int id) {
		return articleRepository.getArticleById(id);
	}

	public void deleteArticle(int id) {
		articleRepository.deleteArticle(id);
	}

	public List<Article> getArticles() {
		return articleRepository.getArticles();
	}

	public void doModify(int id, String title, String body) {
		articleRepository.modifyArticle(id, title, body);
	}
}
