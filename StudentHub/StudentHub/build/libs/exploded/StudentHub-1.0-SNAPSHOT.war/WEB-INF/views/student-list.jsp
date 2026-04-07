<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<h2>Danh sách sinh viên</h2>

<form action="/students" method="get">
    Tên: <input type="text" name="search"/>
    Khoa: <input type="text" name="faculty"/>
    <button type="submit">Tìm</button>
</form>

<br/>

<button style="cursor: pointer" onclick="window.location.href='/students?sortBy=name'">Sắp xếp thêo tên</button>
<button style="cursor: pointer" onclick="window.location.href='/students?sortBy=gpa'">Sắp xếp theo điểm GPA</button>

<br/>

<c:if test="${not empty message}">
    <p>${message}</p>
</c:if>

<table style="border-collapse: collapse;">
    <tr>
        <th style="background-color: #2d5de2; padding: 12px;">STT</th>
        <th style="background-color: #2d5de2; padding: 12px;">Mã SV</th>
        <th style="background-color: #2d5de2; padding: 12px;">Họ tên</th>
        <th style="background-color: #2d5de2; padding: 12px;">Khoa</th>
        <th style="background-color: #2d5de2; padding: 12px;">Năm</th>
        <th style="background-color: #2d5de2; padding: 12px;">GPA</th>
        <th style="background-color: #2d5de2; padding: 12px;">Trạng thái</th>
        <th style="background-color: #2d5de2; padding: 12px;">Action</th>
    </tr>

    <c:forEach var="s" items="${students}" varStatus="loop">
        <tr>
            <td style="padding: 12px; border-bottom: 1px solid #555; color: #fff;">${loop.index + 1}</td>
            <td style="padding: 12px; border-bottom: 1px solid #555; color: #fff;">${s.studentCode}</td>
            <td style="padding: 12px; border-bottom: 1px solid #555; color: #fff;">${s.fullName}</td>
            <td style="padding: 12px; border-bottom: 1px solid #555; color: #fff;">${s.faculty}</td>
            <td style="padding: 12px; border-bottom: 1px solid #555; color: #fff;">${s.enrollmentYear}</td>
            <td style="padding: 12px; border-bottom: 1px solid #555; color: #fff;">${s.gpa}</td>

            <td style="padding: 12px; border-bottom: 1px solid #555;">
                <c:choose>
                    <c:when test="${s.status == 'Đang học'}">
                        <span style="color:green">${s.status}</span>
                    </c:when>
                    <c:when test="${s.status == 'Bảo lưu'}">
                        <span style="color:orange">${s.status}</span>
                    </c:when>
                    <c:when test="${s.status == 'Tốt nghiệp'}">
                        <span style="color:blue">${s.status}</span>
                    </c:when>
                    <c:otherwise>
                        ${s.status}
                    </c:otherwise>
                </c:choose>
            </td>

            <td style="padding: 12px; border-bottom: 1px solid #555;">
                <button style="cursor: pointer" onclick="window.location.href='/students/detail?id=${s.id}'">Xem</button>
            </td>
        </tr>
    </c:forEach>
</table>
<br/>
<button style="cursor: pointer" onclick="window.location.href='/dashboard'">Báo cáo</button>