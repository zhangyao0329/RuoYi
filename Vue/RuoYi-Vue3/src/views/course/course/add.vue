<template>
  <div>
    <el-form ref="formRef" :model="formData" :rules="rules" size="default" label-width="100px">
      <el-row gutter="15">
        <el-col :span="12">
          <el-form-item label="课程编号" prop="field104">
            <el-select v-model="formData.field104" placeholder="请选择课程编号" clearable :style="{width: '100%'}">
              <el-option v-for="(item, index) in field104Options" :key="index" :label="item.label"
                :value="item.value" :disabled="item.disabled"></el-option>
            </el-select>
          </el-form-item>
        </el-col>
        <el-col :span="12">
          <el-form-item label="课程学科" prop="field102">
            <el-input v-model="formData.field102" type="text" placeholder="请输入课程学科" clearable
              :style="{width: '100%'}"></el-input>
          </el-form-item>
        </el-col>
      </el-row>
      <el-row gutter="15">
        <el-col :span="12">
          <el-form-item label="课程名称" prop="field107">
            <el-input v-model="formData.field107" type="text" placeholder="请输入课程名称" clearable
              :style="{width: '100%'}"></el-input>
          </el-form-item>
        </el-col>
        <el-col :span="12">
          <el-form-item label="课程价格" prop="field106">
            <el-input v-model="formData.field106" type="text" placeholder="请输入课程价格" clearable
              :style="{width: '100%'}"></el-input>
          </el-form-item>
        </el-col>
      </el-row>
      <el-row gutter="15">
        <el-col :span="12">
          <el-form-item label="适用人群" prop="field109">
            <el-select v-model="formData.field109" placeholder="请选择适用人群" clearable :style="{width: '100%'}">
              <el-option v-for="(item, index) in field109Options" :key="index" :label="item.label"
                :value="item.value" :disabled="item.disabled"></el-option>
            </el-select>
          </el-form-item>
        </el-col>
        <el-col :span="12">
          <el-form-item label="课程有效期" prop="field110">
            <el-date-picker type="daterange" v-model="formData.field110" format="YYYY-MM-DD"
              value-format="YYYY-MM-DD" :style="{width: '100%'}" start-placeholder="开始日期"
              end-placeholder="结束日期" range-separator="至" clearable></el-date-picker>
          </el-form-item>
        </el-col>
      </el-row>
      <el-row gutter="15">
        <el-col :span="12">
          <el-form-item label="上传" prop="field114" required>
            <el-upload ref="field114" :file-list="field114fileList" :action="field114Action"
              :before-upload="field114BeforeUpload">
              <el-button size="small" type="primary" icon="el-icon-upload">点击上传</el-button>
            </el-upload>
          </el-form-item>
        </el-col>
        <el-col :span="12">
          <el-form-item label="评分" prop="field115">
            <el-rate v-model="formData.field115"></el-rate>
          </el-form-item>
        </el-col>
      </el-row>
      <el-row gutter="15">
        <el-form-item label="课程介绍" prop="field117">
          <el-input v-model="formData.field117" type="textarea" placeholder="请输入课程介绍"
            :autosize="{minRows: 4, maxRows: 4}" :style="{width: '100%'}"></el-input>
        </el-form-item>
      </el-row>
      <el-form-item>
        <el-button type="primary" @click="submitForm">提交</el-button>
        <el-button @click="resetForm">重置</el-button>
      </el-form-item>
    </el-form>
  </div>
</template>
<script setup>
import {
  ElMessage
}
from 'element-plus'
const formRef = ref()
const data = reactive({
  formData: {
    field104: undefined,
    field102: undefined,
    field107: undefined,
    field106: undefined,
    field109: undefined,
    field110: null,
    field114: null,
    field115: 0,
    field117: undefined,
  },
  rules: {
    field104: [{
      required: true,
      message: '请选择课程编号',
      trigger: 'change'
    }],
    field102: [{
      required: true,
      message: '请输入课程学科',
      trigger: 'blur'
    }],
    field107: [{
      required: true,
      message: '请输入课程名称',
      trigger: 'blur'
    }],
    field106: [{
      required: true,
      message: '请输入课程价格',
      trigger: 'blur'
    }],
    field109: [{
      required: true,
      message: '请选择适用人群',
      trigger: 'change'
    }],
    field110: [{
      required: true,
      message: '课程有效期不能为空',
      trigger: 'change'
    }],
    field115: [{
      required: true,
      message: '评分不能为空',
      trigger: 'change'
    }],
    field117: [{
      required: true,
      message: '请输入课程介绍',
      trigger: 'blur'
    }],
  }
})
const {
  formData,
  rules
} = toRefs(data)
const field104Options = ref([{
  "label": "选项一",
  "value": 1
}, {
  "label": "选项二",
  "value": 2
}])
const field109Options = ref([{
  "label": "选项一",
  "value": 1
}, {
  "label": "选项二",
  "value": 2
}])
// 上传请求路径
const field114Action = ref('https://jsonplaceholder.typicode.com/posts/')
// 上传文件列表
const field114fileList = ref([])
/**
 * @name: 上传之前的文件判断
 * @description: 上传之前的文件判断，判断文件大小文件类型等
 * @param {*} file
 * @return {*}
 */
function field114BeforeUpload(file) {
  let isRightSize = file.size / 1024 / 1024 < 2
  if (!isRightSize) {
    ElMessage.error('文件大小超过 2MB')
  }
  return isRightSize
}
/**
 * @name: 表单提交
 * @description: 表单提交方法
 * @return {*}
 */
function submitForm() {
  formRef.value.validate((valid) => {
    if (!valid) return
    // TODO 提交表单
  })
}
/**
 * @name: 表单重置
 * @description: 表单重置方法
 * @return {*}
 */
function resetForm() {
  formRef.value.resetFields()
}

</script>
<style>
.el-upload__tip {
  line-height: 1.2;
}

.el-rate {
  display: inline-block;
  vertical-align: text-top;
}

</style>
