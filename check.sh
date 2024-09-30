#!/bin/bash

# Đường dẫn ứng dụng
APP_URL="http://127.0.0.1:5050"

# Gửi yêu cầu HTTP và lưu kết quả
RESPONSE=$(curl "$APP_URL")

# Kiểm tra nếu thông tin xác nhận thành công có trong phản hồi
if echo "$RESPONSE" | grep "calling"; then
    echo "Thành công"
    exit 0
else
    echo "Không thành công"
    exit 1
fi
