<div class="row">
    <div class="col-xs-12">
        <div class="table-responsive">
            <!--搜索框开始-->
            <div class="widget-box">
                <div class="widget-header">
                    <h4>搜索框</h4>
                </div>
                <div class="widget-body">
                    <div class="widget-main">
                        <form class="form-inline" method="get">
                            <!--<input type="text" name="name" value="<?php //echo Yii::app()->request->getParam('name', '') ?>" class="input-medium" placeholder="分类名称">
                            <button type="submit" class="btn btn-purple btn-sm">
                                搜索
                                <i class="icon-search icon-on-right bigger-110"></i>
                            </button>-->
                            <a href="<?php echo $this->createUrl('create') ?>" class="btn btn-primary btn-sm">添加</a>
                            <a href="javascript:void(0)" data-url="<?php echo $this->createUrl('delete') ?>" class="btn btn-danger delete btn-sm">删除</a>
                        </form>
                    </div>
                </div>
            </div>
            <!--搜索框结束-->
            <?php if ($history_data): ?>
                <table id="sample-table-1" class="table table-striped table-bordered table-hover">
                    <thead>
                        <tr>
                            <th class="center">
                                <label>
                                    <input type="checkbox" class="ace" />
                                    <span class="lbl"></span>
                                </label>
                            </th>
                            <th>分类名称</th>

                            <th></th>
                        </tr>
                    </thead>

                    <tbody>
                        <?php foreach ($history_data as $k => $v): ?>
                            <tr>
                                <td class="center">
                                    <label>
                                        <input type="checkbox" class="ace delete-id" name="id[]" value="<?php echo $k ?>" />
                                        <span class="lbl"></span>
                                    </label>
                                </td>
                                <td><?php echo $v ?></td>
                                <td>
                                    <a href="<?php echo $this->createUrl('update', array('id' => $k)) ?>">修改</a>
                                    <a href="javascript:void(0)" class="delete-single" data-url="<?php echo $this->createUrl('delete', array('id' => $k)) ?>">删除</a>
                                </td>
                            </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
            <?php else: ?>
                <div class="no-record">
                    暂无数据
                </div>
            <?php endif; ?>
        </div><!-- /.table-responsive -->
    </div><!-- /span -->
</div><!-- /row -->