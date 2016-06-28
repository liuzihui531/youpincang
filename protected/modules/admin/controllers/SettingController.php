<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of SettingController
 * 系统设置
 * @author lzh
 */
class SettingController extends Controller {

    public function init() {
        parent::init();
    }

    //put your code here
    public function actionIndex() {
        $this->breadcrumbs = array('系统设置');
        $memKey = Setting::$memKey;
        $setting = Setting::model()->getSetting("", false);
        $this->is_upload = true;
        $this->render('index', array('setting' => $setting));
    }

    public function actionSave() {
        $post = $_POST['setting'];
        $image = Yii::app()->request->getParam('image', array());
        $image = $image ? $image[0] : "";
        $post['wechat'] = $image;
        $res = Setting::model()->saveSetting($post);
        if ($res['status'] == 0) {
            $this->handleResult(0, $res['message']);
        } elseif ($res['status'] == 1) {
            $this->handleResult(1, $res['message']);
        }
    }

    public function actionClear_cache() {
        $this->breadcrumbs = array('清除缓存');
        $data = array(
            'setting' => '系统设置',
        );
        if (Yii::app()->request->isPostRequest) {
            $memKey = Yii::app()->request->getParam('memkey', '');
            Yii::app()->cache->delete($memKey);
            $this->success('清除成功！');
        }
        $this->render('clear_cache', array('data' => $data));
    }

}
