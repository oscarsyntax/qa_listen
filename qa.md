---

Fragestunde: Listen

---

**F1: Wie initialisiert man eine Liste von Zeichenketten in Kotlin mit den Standardbibliotheksfunktionen?**

---

```kotlin
val farben: List<String> = listOf("Rot", "Grün", "Blau")
```

---

**F2: Wie greift man auf das Element am zweiten Index einer Liste in Kotlin zu?**

---

```kotlin
val elementAmIndexZwei = farben[1]
```

---

**F3: Wie fügt man ein Element am Ende einer Liste in Kotlin hinzu?**

---

```kotlin
farben.add("Gelb")
```

---

**F4: Wie ermittelt man die Größe einer Liste in Kotlin?**

---

```kotlin
val listenGroesse = farben.size
```

---

**F5: Wie sortiert man eine Liste in alphabetischer Reihenfolge in Kotlin?**

---

```kotlin
farben.sort()
```

---

**F6: Wie konvertiert man eine Liste in ein Array in Kotlin?**

---

```kotlin
val farbenArray: Array<String> = farben.toTypedArray()
```

---

**F7: Wie filtert man eine Liste, um nur bestimmte Elemente in Kotlin zu erhalten?**

---

```kotlin
val gefilterteFarben = farben.filter { it.startsWith("G") }
```

---

**F8: Wie führt man eine Mapping-Operation auf einer Liste in Kotlin durch?**

---

```kotlin
val grossgeschriebeneFarben = farben.map { it.toUpperCase() }
```

---

**F9: Wie fügt man zwei Listen in Kotlin zusammen?**

---

```kotlin
val kombinierteListe = farben + listOf("Lila", "Orange")
```

---

**F10: Wie prüft man, ob ein bestimmtes Element in einer Liste in Kotlin vorhanden ist?**

---

```kotlin
val enthältGelb = "Gelb" in farben
```

---

**Anwendung**

---

Angenommen, du hast eine Liste von Schülern, die jeweils ein Name und ein Alter haben.  
Deine Aufgabe ist es, eine neue Liste mit den Namen der volljährigen Schüler (Alter >= 18) zu erstellen, wobei die Namen in Großbuchstaben sein sollen.

---

```kotlin
data class Schueler(val name: String, val alter: Int)

val schuelerListe = listOf(
    Schueler("Anna", 16),
    Schueler("Tom", 19),
    Schueler("Lisa", 17),
    Schueler("Max", 20),
    Schueler("Eva", 18)
)
```

---

Deine Aufgabe ist es, die Liste der volljährigen Schüler in Großbuchstaben zu erzeugen:

```kotlin
// Ergebnis:
val volljaehrigeNamen = listOf("TOM", "MAX", "EVA")
```

---

```kotlin
val schuelerListe = listOf(
    Schueler("Anna", 16),
    Schueler("Tom", 19),
    Schueler("Lisa", 17),
    Schueler("Max", 20),
    Schueler("Eva", 18)
)

val volljaehrigeNamen = schuelerListe
    .filter { it.alter >= 18 }
    .map { it.name.toUpperCase() }

println(volljaehrigeNamen) // Output: [TOM, MAX, EVA]
```
