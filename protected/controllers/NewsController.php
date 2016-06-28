<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of CateController
 *
 * @author Dell
 */
class NewsController extends IndexBaseController {

    public function actionIndex() {
        $id = Yii::app()->request->getParam('id', 0);
        $cate = NewsCategory::model()->getCache();
        if ($cate[$id]['top_id'] == $this->news_id) {
            $news_sub = NewsCategory::model()->findAllByAttributes(array('pid' => $id));
            $cate_id = array($id);
            if ($news_sub) {
                foreach ($news_sub as $k => $v) {
                    $cate_id[] = $v->id;
                }
            }
            $criteria = new CDbCriteria();
            $criteria->addInCondition('cate_id', $cate_id);
            $data = News::model()->getList('index', true, 20, $criteria);
            $img = NewsCategory::model()->findByPk($id)->image;
            $data['img'] = $img;
            $this->render('index', $data);
        } else {
            $tmp_id = News::model()->findByAttributes(array('cate_id' => $id))->id;
            $this->actionView($tmp_id);
        }
    }

    public function actionView($id = 0) {
        if (!$id) {
            $id = Yii::app()->request->getParam('id', 0);
        }
        $model = News::model()->findByPk($id);
        $model->view_count += 1;
        $model->save();
        $cate = NewsCategory::model()->getCache();
        if ($cate[$model->cate_id]['top_id'] == $this->news_id) {
            $this->render("news", array('model' => $model));
            exit;
        }
        if ($model->type == 0) { //普通网页
            //网页类型，有整页的，也有2/3页且右侧带分类的
            $position = array(
                'self' => array(
                    'url' => $this->createUrl('/news/view', array('id' => $id)),
                    'name' => $model->title,
                ),
                'top' => array(
                    'url' => $this->createUrl('/news/index', array('id' => $model->cate_id)),
                    'name' => $model->cate->name,
                ),
            );
            $sub_list = News::model()->findAllByAttributes(array('cate_id' => $model->cate_id));
            $this->render("pinpai", array('model' => $model, 'position' => $position, 'sub_list' => $sub_list));
        } elseif ($model->type == 1) {//图片列表
            $position = array(
                'self' => array(
                    'url' => $this->createUrl('/news/view', array('id' => $id)),
                    'name' => $model->title,
                ),
                'top' => array(
                    'url' => $this->createUrl('/news/index', array('id' => $model->cate_id)),
                    'name' => $model->cate->name,
                ),
            );
            $sub_list = News::model()->findAllByAttributes(array('cate_id' => $model->cate_id));
            $image = $model->image ? explode(',', $model->image) : array();
            $this->render("chanpin", array('model' => $model, 'position' => $position, 'sub_list' => $sub_list, 'image' => $image));
        } elseif ($model->type == 2) { //图片幻灯片
            $position = array(
                'self' => array(
                    'url' => $this->createUrl('/news/view', array('id' => $id)),
                    'name' => $model->title,
                ),
                'top' => array(
                    'url' => $this->createUrl('/news/index', array('id' => $model->cate_id)),
                    'name' => $model->cate->name,
                ),
            );
            $image = $model->image ? explode(',', $model->image) : array();
            $this->render("dianpu", array('model' => $model, 'position' => $position,'image' => $image));
        }elseif($model->type == 4){ //单页
            $position = array(
                'self' => array(
                    'url' => $this->createUrl('/news/view', array('id' => $id)),
                    'name' => $model->title,
                ),
                'top' => array(
                    'url' => $this->createUrl('/news/index', array('id' => $model->cate_id)),
                    'name' => $model->cate->name,
                ),
            );
            $this->render("singlepage", array('model' => $model, 'position' => $position));
        }
    }

}
