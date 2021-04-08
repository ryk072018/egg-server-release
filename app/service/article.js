'use strict';

const Service = require('egg').Service;

class ArticleService extends Service {
  async create(params) {
    const { app } = this;
    try {
      const res = await app.mysql.insert('article', params);
      return res;
    } catch (err) {
      return err;
    }
  }

  async list() {
    const { app } = this;
    try {
      const res = await app.mysql.select('article');
      return res;
    } catch (err) {
      return err;
    }
  }

  async detail(id) {
    if (!id) {
      console.log('id不能为空');
      return null;
    }

    try {
      const { app } = this;
      const res = await app.mysql.get('article', { id });
      return res;
    } catch (err) {
      return err;
    }
  }
}

module.exports = ArticleService;
