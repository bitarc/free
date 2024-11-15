# ѯ���û�ѡ��������ͣ�������ֱ����Ա�����߼���
Write-Host "��ѡ��������ͣ����� 1 ѡ�� domain������ 2 ѡ�� ipcidr����"
$choice = Read-Host

# ����ѡ��Ĺ����������ñ�ע����ֱ����������ļ�����
if ($choice -eq "1") {
    $RULESET_DESC = "domain"
} elseif ($choice -eq "2") {
    $RULESET_DESC = "ipcidr"
} else {
    Write-Host "��Чѡ�������� 1 �� 2��"
    exit
}

# ѯ���û������ļ�����
Write-Host "�����������ļ������ƣ����� zidingyi.yaml����"
$INPUT_FILE = Read-Host

# ��������ļ��Ƿ����
if (-Not (Test-Path $INPUT_FILE)) {
    Write-Host "�����ļ������ڣ������ļ�����"
    exit
}

# �Զ�������ļ��������������ļ���������
$OUTPUT_FILE = [System.IO.Path]::ChangeExtension($INPUT_FILE, ".mrs")

# ִ��ת��
& mihomo convert-ruleset $RULESET_DESC yaml $INPUT_FILE $OUTPUT_FILE

Write-Host "ת����ɣ�$OUTPUT_FILE"
