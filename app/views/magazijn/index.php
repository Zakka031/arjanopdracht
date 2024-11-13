<?php if ($data['messageVisibility'] === 'flex'): ?>
    <div class="alert alert-<?= $data['messageColor'] ?>" style="display: <?= $data['messageVisibility'] ?>;">
        <?= $data['message'] ?>
    </div>
<?php endif; ?>

<?php if ($data['dataRows'] !== NULL && is_array($data['dataRows'])): ?>
    <table class="table">
        <thead>
            <tr>
                <th>Barcode</th>
                <th>Naam</th>
                <th>Aantal Aanwezig</th>
                <th>Verpakkings Eenheid</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($data['dataRows'] as $row): ?>
                <tr>
                    <td><?= htmlspecialchars($row->Barcode) ?></td>
                    <td><?= htmlspecialchars($row->Naam) ?></td>
                    <td><?= htmlspecialchars($row->AantalAanwezig) ?></td>
                    <td><?= htmlspecialchars($row->VerpakkingsEenheid) ?></td>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
<?php else: ?>
    <p>Er zijn geen producten beschikbaar in het magazijn.</p>
<?php endif; ?>
