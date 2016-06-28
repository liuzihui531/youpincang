<?php

/**
 * This is the model class for table "index_image".
 *
 * The followings are the available columns in table 'index_image':
 * @property integer $id
 * @property integer $type
 * @property string $image
 * @property string $url
 * @property integer $sorting
 * @property integer $created
 */
class IndexImage extends CActiveRecord {

    /**
     * 获取新闻列表
     * @param type $platform
     * @param type $show_page
     * @param type $pageSize
     * @return type
     */
    public function getList($platform = 'admin', $show_page = true, $pageSize = 10, $criteria = null) {
        if (!$criteria) {
            $criteria = new CDbCriteria();
        }
        //搜索项
        $title = Yii::app()->request->getParam('title', '');
        if ($title) {
            $criteria->addSearchCondition('title', $title);
        }
        if ($platform == 'admin') {
            $type = Yii::app()->request->getParam('type',0);
            $criteria->compare('type', $type);
        }
        if ($platform == 'index') {
            
        }
        $pager = new CPagination($this->count($criteria));
        if ($show_page) {
            $pager->pageSize = $pageSize;
            $pager->applyLimit($criteria);
        }
        $model = $this->findAll($criteria);
        return array('model' => $model, 'pager' => $pager);
    }

    public function getType() {
        $return = array(
            0 => '大图列表',
            1 => '小图列表',
        );
        return $return;
    }

    /**
     * @return string the associated database table name
     */
    public function tableName() {
        return 'index_image';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules() {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('type, sorting, created', 'numerical', 'integerOnly' => true),
            array('image', 'length', 'max' => 128),
            array('name', 'length', 'max' => 64),
            array('url', 'length', 'max' => 512),
            // The following rule is used by search().
            // @todo Please remove those attributes that should not be searched.
            array('id, type, image, url, sorting, created', 'safe', 'on' => 'search'),
        );
    }

    /**
     * @return array relational rules.
     */
    public function relations() {
        // NOTE: you may need to adjust the relation name and the related
        // class name for the relations automatically generated below.
        return array(
        );
    }

    /**
     * @return array customized attribute labels (name=>label)
     */
    public function attributeLabels() {
        return array(
            'id' => 'ID',
            'type' => '0 大图，1小图',
            'image' => '图片',
            'url' => '地址',
            'sorting' => '排序',
            'name' => '名称',
            'created' => 'Created',
        );
    }

    /**
     * Retrieves a list of models based on the current search/filter conditions.
     *
     * Typical usecase:
     * - Initialize the model fields with values from filter form.
     * - Execute this method to get CActiveDataProvider instance which will filter
     * models according to data in model fields.
     * - Pass data provider to CGridView, CListView or any similar widget.
     *
     * @return CActiveDataProvider the data provider that can return the models
     * based on the search/filter conditions.
     */
    public function search() {
        // @todo Please modify the following code to remove attributes that should not be searched.

        $criteria = new CDbCriteria;

        $criteria->compare('id', $this->id);
        $criteria->compare('type', $this->type);
        $criteria->compare('image', $this->image, true);
        $criteria->compare('url', $this->url, true);
        $criteria->compare('sorting', $this->sorting);
        $criteria->compare('created', $this->created);

        return new CActiveDataProvider($this, array(
            'criteria' => $criteria,
        ));
    }

    /**
     * Returns the static model of the specified AR class.
     * Please note that you should have this exact method in all your CActiveRecord descendants!
     * @param string $className active record class name.
     * @return IndexImage the static model class
     */
    public static function model($className = __CLASS__) {
        return parent::model($className);
    }

}
