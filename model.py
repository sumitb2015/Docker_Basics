import joblib
model = joblib.load("salary.pk")
n = int(input("Enter the number of years of experience"))
print(model.predict([[n]]))
